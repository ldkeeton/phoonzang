//! Collapse routines that several binaries carry into ``shared/<band>/``.
//!
//! Copies share one file when their code agrees token for token except where
//! each spells a name its own binary defines (``dseg_0c7a`` here, ``_sbot``
//! there).  The shared file is spelled after one copy with each differing
//! name replaced by a common one (``aztec_csav.dseg1``), and ``equ`` lines
//! just above each binary's ``%include`` bind the common names to its own.
//! Bands: ``aztec`` the C library, ``game`` compiled C (a csav frame),
//! ``library`` the rest, ``data`` data (shared only under one name).

const std = @import("std");
const Allocator = std.mem.Allocator;
const render = @import("render.zig");
const File = render.File;

const Copy = struct {
    file: usize,
    toks: []const []const u8,
};

const Group = struct {
    members: []Copy,
    stem: []const u8,
    /// Per member: (common, own) for each name it spells differently.
    binds: [][]const [2][]const u8,
};

const Names = std.StringHashMap(void);

/// Resolve all shared paths and bindings without changing the prepared files.
pub fn resolve(gpa: Allocator, prepared: []const render.Prepared) !render.Resolution {
    var files: std.ArrayList(File) = .empty;
    var syms = std.StringHashMap(*const Names).init(gpa);
    for (prepared) |*binary| {
        try files.appendSlice(gpa, binary.fragments);
        try syms.put(binary.layout.b.name, &binary.names);
    }

    // Candidates bucketed by shape: names numbered in order of first use.
    var buckets = std.array_hash_map.String(std.ArrayList(Copy)).empty;
    for (files.items, 0..) |f, i| {
        if (addressNamed(f.stem)) continue;
        const toks = try tokenize(gpa, f.text);
        if (!f.data and isBareRet(toks)) continue;
        var key: std.ArrayList(u8) = .empty;
        if (f.data) {
            try key.print(gpa, "D\x00{s}", .{f.stem});
            for (toks) |t| try key.print(gpa, "\x01{s}", .{t});
        } else {
            const set = syms.get(f.bin).?;
            var seen = std.StringHashMap(usize).init(gpa);
            try key.append(gpa, 'C');
            for (toks) |t| {
                if (std.mem.eql(u8, t, f.stem)) {
                    try key.appendSlice(gpa, "\x01\x00self");
                } else if (isName(set, t)) {
                    const g = try seen.getOrPut(t);
                    if (!g.found_existing) g.value_ptr.* = seen.count() - 1;
                    try key.print(gpa, "\x01\x00{d}", .{g.value_ptr.*});
                } else try key.print(gpa, "\x01{s}", .{t});
            }
        }
        const gop = try buckets.getOrPut(gpa, key.items);
        if (!gop.found_existing) gop.value_ptr.* = .empty;
        try gop.value_ptr.append(gpa, .{ .file = i, .toks = toks });
    }

    // Greedy clusters per bucket; one group per shared path (the largest).
    var best = std.array_hash_map.String(Group).empty;
    for (buckets.values()) |copies| {
        if (copies.items.len < 2) continue;
        var left = try gpa.dupe(Copy, copies.items);
        while (left.len > 0) {
            var count = std.StringHashMap(usize).init(gpa);
            for (left) |c| (try count.getOrPutValue(files.items[c.file].stem, 0)).value_ptr.* += 1;
            const Rank = struct {
                fs: []const File,
                n: *std.StringHashMap(usize),
                fn lt(r: @This(), a: Copy, z: Copy) bool {
                    const fa = r.fs[a.file];
                    const fz = r.fs[z.file];
                    const ga = generic(fa.stem);
                    const gz = generic(fz.stem);
                    if (ga != gz) return gz;
                    const na = r.n.get(fa.stem).?;
                    const nz = r.n.get(fz.stem).?;
                    if (na != nz) return na > nz;
                    const o = std.mem.order(u8, fa.stem, fz.stem);
                    if (o != .eq) return o == .lt;
                    return std.mem.lessThan(u8, fa.path, fz.path);
                }
            };
            std.mem.sort(Copy, left, Rank{ .fs = files.items, .n = &count }, Rank.lt);
            const stem = files.items[left[0].file].stem;
            var group: std.ArrayList(Copy) = .empty;
            try group.append(gpa, left[0]);
            var binds: [][]const [2][]const u8 = try gpa.alloc([]const [2][]const u8, 1);
            binds[0] = &.{};
            for (left[1..]) |c| {
                const bin = files.items[c.file].bin;
                const dup = for (group.items) |g| {
                    if (std.mem.eql(u8, files.items[g.file].bin, bin)) break true;
                } else false;
                if (dup) continue;
                try group.append(gpa, c);
                if (try bind(gpa, files.items, &syms, group.items, stem)) |b| {
                    binds = b;
                } else _ = group.pop();
            }
            var rest: std.ArrayList(Copy) = .empty;
            for (left) |c| {
                const in = for (group.items) |g| {
                    if (g.file == c.file) break true;
                } else false;
                if (!in) try rest.append(gpa, c);
            }
            left = rest.items;
            if (group.items.len < 2) continue;
            const lead = files.items[group.items[0].file];
            const path = try std.fmt.allocPrint(gpa, "shared/{s}/{s}.asm", .{ band(lead), stem });
            const prev = best.get(path);
            if (prev == null or prev.?.members.len < group.items.len)
                try best.put(gpa, path, .{ .members = group.items, .stem = stem, .binds = binds });
        }
    }

    // Resolve include targets; render owns their NASM formatting.
    var targets = std.StringHashMap(render.Target).init(gpa);
    var shared_files: std.ArrayList(File) = .empty;
    var lrefs = std.StringHashMap(*Names).init(gpa);
    var bit = best.iterator();
    while (bit.next()) |kv| {
        const g = kv.value_ptr.*;
        const lead = files.items[g.members[0].file];
        const text = try spell(gpa, lead.text, g.binds[0]);
        for (g.members, g.binds) |m, pairs| {
            const f = files.items[m.file];
            var aliases: std.ArrayList([2][]const u8) = .empty;
            for (pairs) |p| {
                if (std.mem.eql(u8, p[0], g.stem)) {
                    try aliases.append(gpa, .{ p[1], p[0] });
                    try localAliases(gpa, &aliases, text, p[1], g.stem, try localRefs(gpa, files.items, f.bin, &lrefs));
                } else try aliases.append(gpa, p);
            }
            try targets.put(f.path, .{ .path = kv.key_ptr.*, .aliases = aliases.items });
        }
        try shared_files.append(gpa, .{ .path = kv.key_ptr.*, .text = text, .stem = g.stem, .data = lead.data });
    }
    std.debug.print("shared {d} routines across binaries ({d} copies)\n", .{ best.count(), targets.count() });
    return .{ .targets = targets, .files = shared_files.items };
}

/// Bind qualified local references used elsewhere in the owning binary.
fn localAliases(gpa: Allocator, out: *std.ArrayList([2][]const u8), text: []const u8, own: []const u8, stem: []const u8, refs: *Names) !void {
    var lines = std.mem.splitScalar(u8, text, '\n');
    while (lines.next()) |line| {
        if (line.len < 3 or line[0] != '.' or line[line.len - 1] != ':') continue;
        const l = line[0 .. line.len - 1];
        const full = try std.fmt.allocPrint(gpa, "{s}{s}", .{ own, l });
        if (refs.contains(full)) try out.append(gpa, .{ full, try std.fmt.allocPrint(gpa, "{s}{s}", .{ stem, l }) });
    }
}

/// The qualified local tokens binary *bin*'s files use (computed once per binary).
fn localRefs(gpa: Allocator, fs: []const File, bin: []const u8, cache: *std.StringHashMap(*Names)) !*Names {
    if (cache.get(bin)) |r| return r;
    const set = try gpa.create(Names);
    set.* = Names.init(gpa);
    for (fs) |f| {
        if (!std.mem.eql(u8, f.bin, bin)) continue;
        for (try tokenize(gpa, f.text)) |t| {
            if (t.len == 0 or !identStart(t[0])) continue;
            const dot = std.mem.lastIndexOfScalar(u8, t, '.') orelse continue;
            if (dot > 0 and numberedLocal(t[dot + 1 ..])) try set.put(t, {});
        }
    }
    try cache.put(bin, set);
    return set;
}

/// Common-name bindings for *group* (spelled after its first copy), or null
/// when the copies differ anywhere but in names their binaries define.
fn bind(gpa: Allocator, fs: []const File, syms: *std.StringHashMap(*const Names), group: []const Copy, stem: []const u8) !?[][]const [2][]const u8 {
    for (group) |c| {
        const f = fs[c.file];
        if (std.mem.eql(u8, f.stem, stem)) continue;
        // Never alias away a person's name, nor take one the binary uses.
        if (!generic(f.stem) or syms.get(f.bin).?.contains(stem)) return null;
    }
    const n = group[0].toks.len;
    for (group) |c| if (c.toks.len != n) return null;
    const out = try gpa.alloc([]const [2][]const u8, group.len);
    var common = std.StringHashMap([]const u8).init(gpa); // first copy's name -> common
    var fam = std.StringHashMap(usize).init(gpa);
    var maps = try gpa.alloc(std.StringHashMap([]const u8), group.len);
    for (maps) |*m| m.* = std.StringHashMap([]const u8).init(gpa);
    var used = try gpa.alloc(std.StringHashMap(void), group.len);
    for (used) |*u| u.* = std.StringHashMap(void).init(gpa);
    for (0..n) |i| {
        const t0 = group[0].toks[i];
        const same = for (group[1..]) |c| {
            if (!std.mem.eql(u8, c.toks[i], t0)) break false;
        } else true;
        if (same) continue;
        const name = if (common.get(t0)) |cn| cn else blk: {
            const cn = if (std.mem.eql(u8, t0, fs[group[0].file].stem)) stem else c: {
                const fm = family(t0);
                const k = try fam.getOrPutValue(fm, 0);
                k.value_ptr.* += 1;
                break :c try std.fmt.allocPrint(gpa, "{s}.{s}{d}", .{ stem, fm, k.value_ptr.* });
            };
            try common.put(t0, cn);
            break :blk cn;
        };
        for (group, 0..) |c, gi| {
            const t = c.toks[i];
            const own_stem = std.mem.eql(u8, t, fs[c.file].stem);
            if (!own_stem and !isName(syms.get(fs[c.file].bin).?, t)) return null;
            const g = try maps[gi].getOrPut(t);
            if (g.found_existing) {
                if (!std.mem.eql(u8, g.value_ptr.*, name)) return null;
            } else {
                if (used[gi].contains(name)) return null;
                try used[gi].put(name, {});
                g.value_ptr.* = name;
            }
        }
    }
    // A name a copy spells the same at one place and differently at another
    // would be half-renamed: every occurrence must map.
    for (group, 0..) |c, gi| {
        var pairs: std.ArrayList([2][]const u8) = .empty;
        for (c.toks) |t| if (maps[gi].get(t) == null and isName(syms.get(fs[c.file].bin).?, t)) {
            var it = maps[gi].valueIterator();
            while (it.next()) |v| if (std.mem.eql(u8, v.*, t)) return null;
        };
        var it = maps[gi].iterator();
        while (it.next()) |kv| if (!std.mem.eql(u8, kv.key_ptr.*, kv.value_ptr.*))
            try pairs.append(gpa, .{ kv.value_ptr.*, kv.key_ptr.* });
        std.mem.sort([2][]const u8, pairs.items, {}, struct {
            fn lt(_: void, a: [2][]const u8, z: [2][]const u8) bool {
                return std.mem.lessThan(u8, a[0], z[0]);
            }
        }.lt);
        out[gi] = pairs.items;
    }
    return out;
}

/// The shared text: *text* without address comments, own names -> common.
fn spell(gpa: Allocator, text: []const u8, pairs: []const [2][]const u8) ![]const u8 {
    var map = std.StringHashMap([]const u8).init(gpa);
    for (pairs) |p| try map.put(p[1], p[0]);
    var out: std.ArrayList(u8) = .empty;
    var lines = std.mem.splitScalar(u8, text, '\n');
    var first = true;
    while (lines.next()) |raw| {
        if (!first) try out.append(gpa, '\n');
        first = false;
        const line = stripAddr(raw);
        var i: usize = 0;
        while (i < line.len) {
            const ch = line[i];
            if (ch == ';') {
                try out.appendSlice(gpa, line[i..]);
                break;
            }
            if (ch == '\'' or ch == '"') {
                const e = std.mem.indexOfScalarPos(u8, line, i + 1, ch) orelse line.len - 1;
                try out.appendSlice(gpa, line[i .. e + 1]);
                i = e + 1;
                continue;
            }
            if (identStart(ch)) {
                var e = i + 1;
                while (e < line.len and identChar(line[e])) e += 1;
                const w = line[i..e];
                try out.appendSlice(gpa, map.get(w) orelse w);
                i = e;
                continue;
            }
            if (ch == '.' or std.ascii.isDigit(ch)) {
                var e = i + 1;
                while (e < line.len and identChar(line[e])) e += 1;
                try out.appendSlice(gpa, line[i..e]);
                i = e;
                continue;
            }
            try out.append(gpa, ch);
            i += 1;
        }
    }
    return out.items;
}

/// Line without its trailing ``; 0xADDR`` annotation.
fn stripAddr(line: []const u8) []const u8 {
    const semi = std.mem.lastIndexOf(u8, line, "; 0x") orelse return line;
    for (line[semi + 4 ..]) |ch| if (!std.ascii.isHex(ch)) return line;
    return std.mem.trimEnd(u8, line[0..semi], " \t");
}

/// Tokens of the code, comments and blank lines dropped; ``\n`` per line.
fn tokenize(gpa: Allocator, text: []const u8) ![]const []const u8 {
    var out: std.ArrayList([]const u8) = .empty;
    var lines = std.mem.splitScalar(u8, text, '\n');
    while (lines.next()) |line| {
        var i: usize = 0;
        const start = out.items.len;
        while (i < line.len) {
            const ch = line[i];
            if (ch == ';') break;
            if (ch == ' ' or ch == '\t') {
                i += 1;
                continue;
            }
            var e = i + 1;
            if (ch == '\'' or ch == '"') {
                e = (std.mem.indexOfScalarPos(u8, line, i + 1, ch) orelse line.len - 1) + 1;
            } else if (identStart(ch) or ch == '.' or std.ascii.isDigit(ch)) {
                while (e < line.len and identChar(line[e])) e += 1;
            }
            try out.append(gpa, line[i..e]);
            i = e;
        }
        if (out.items.len > start) try out.append(gpa, "\n");
    }
    return out.items;
}

fn identStart(ch: u8) bool {
    return std.ascii.isAlphabetic(ch) or ch == '_' or ch == '@';
}

fn identChar(ch: u8) bool {
    return std.ascii.isAlphanumeric(ch) or ch == '_' or ch == '.' or ch == '@';
}

fn numberedLocal(loc: []const u8) bool {
    for ([_][]const u8{ "back", "return", "forward", "l" }) |prefix| {
        if (!std.mem.startsWith(u8, loc, prefix) or loc.len == prefix.len) continue;
        for (loc[prefix.len..]) |ch| if (!std.ascii.isDigit(ch)) return false;
        return true;
    }
    return false;
}

/// A name *set*'s binary defines: a label, an equate, or a qualified local.
fn isName(set: *const Names, t: []const u8) bool {
    if (t.len == 0 or !identStart(t[0])) return false;
    if (set.contains(t)) return true;
    const dot = std.mem.lastIndexOfScalar(u8, t, '.') orelse return false;
    const loc = t[dot + 1 ..];
    if (!numberedLocal(loc)) return false;
    return set.contains(t[0..dot]);
}

/// A content-tagged or address-derived name, not one a person gave.
fn generic(s: []const u8) bool {
    var t = s;
    // Duplicate suffix ``_xxxx``.
    if (hexSuffix(t)) t = t[0 .. t.len - 5];
    if (t.len > 5 and t[t.len - 5] == '_') {
        const tag = t[t.len - 4 ..];
        const all = for (tag) |ch| {
            if (ch < 'G' or ch > 'V') break false;
        } else true;
        if (all) return true;
    }
    return hexSuffix(s) or std.mem.eql(u8, s, "routine");
}

fn hexSuffix(t: []const u8) bool {
    if (t.len < 6 or t[t.len - 5] != '_') return false;
    for (t[t.len - 4 ..]) |ch| if (!std.ascii.isHex(ch) or std.ascii.isUpper(ch)) return false;
    return true;
}

/// The family a common name is counted in: ``dseg``, ``loc``, ``api_idx``.
fn family(t: []const u8) []const u8 {
    if (std.mem.lastIndexOfScalar(u8, t, '.') != null) return "lbl";
    var s = t;
    if (hexSuffix(s)) s = s[0 .. s.len - 5];
    if (s.len > 5 and s[s.len - 5] == '_') {
        const tag = s[s.len - 4 ..];
        const all = for (tag) |ch| {
            if (ch < 'G' or ch > 'V') break false;
        } else true;
        if (all) s = s[0 .. s.len - 5];
    }
    if (s.len == t.len or s.len == 0) return "sym";
    // api_idx_0010 -> api_idx
    if (hexSuffix(s)) s = s[0 .. s.len - 5];
    for (s) |ch| if (!identChar(ch) or ch == '.') return "sym";
    return s;
}

/// A data file named for its address: one address in two programs is two
/// objects, never shared.
fn addressNamed(stem: []const u8) bool {
    for ([_][]const u8{ "dseg_", "cseg_", "str_", "cp_", "bss_" }) |p| {
        if (std.mem.startsWith(u8, stem, p) and hexSuffix(stem)) return true;
    }
    return false;
}

fn isBareRet(toks: []const []const u8) bool {
    // label ':' '\n' 'ret' '\n'
    return toks.len == 5 and std.mem.eql(u8, toks[3], "ret");
}

fn band(f: File) []const u8 {
    if (f.data) return "data";
    if (std.mem.startsWith(u8, f.stem, "aztec_")) return "aztec";
    if (std.mem.indexOf(u8, f.text, "call aztec_csav") != null) return "game";
    return "library";
}


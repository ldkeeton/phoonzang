//! Collapse routines that several binaries carry into ``shared/<band>/``,
//! decided on bytes.  Two copies share when their bytes and instruction
//! boundaries agree everywhere but in the operand fields the renderer named
//! (``render.Slot``), each such field points at the same place inside the
//! fragment or at a name outside it, and those outside names line up one to
//! one.  The shared file is the lead copy rendered again with each name the
//! copies spell differently given a common one (``aztec_free.dseg1``);
//! ``equ`` lines just above each binary's ``%include`` bind it to its own.
//! Bands: a hand-written source's folder, else ``aztec`` the C library,
//! ``game`` compiled C (calls ``aztec_csav``), ``library`` the rest, ``data`` data
//! (shared only under one name).

const std = @import("std");
const Allocator = std.mem.Allocator;
const render = @import("render.zig");
const an = @import("analyze.zig");

pub const Resolution = struct {
    targets: std.StringHashMap(render.Target),
    files: []const render.File,
};

const Copy = struct { p: usize, f: usize };

const Ext = struct { space: u8, name: []const u8 };

const Group = struct {
    lead: Copy,
    stem: []const u8,
    members: []const Copy,
    /// Per member: ``own.local equ stem.local`` for its locals named outside.
    locals: []const []const [2][]const u8,
};

/// Hand-owned ``.c``/``.s`` sources under the output tree.
const Hand = struct {
    /// ``shared/[<band>/]<stem>.c|s``: stem -> band ("" for ``shared/``).
    shared: std.StringHashMap([]const u8),
    /// Beside a binary's own fragment: the path without its suffix.
    local: std.StringHashMap(void),
};

const Names = std.StringHashMap(void);

/// Decide every shared file of *prepared* and render it.  *out_dir* is
/// searched for hand-owned sources (which pin a shared file's name and band,
/// or keep a copy in its binary).
pub fn resolve(gpa: Allocator, io: std.Io, cwd: std.Io.Dir, out_dir: []const u8, prepared: []const render.Prepared) !Resolution {
    const hand = try handSources(gpa, io, cwd, out_dir);
    const names = try gpa.alloc(Names, prepared.len);
    for (prepared, names) |*p, *n| n.* = try binaryNames(gpa, p.layout);

    // Buckets: copies whose keys agree are bytewise the same routine.
    var buckets = std.array_hash_map.String(std.ArrayList(Copy)).empty;
    for (prepared, 0..) |*p, pi| {
        const l = p.layout;
        for (l.frags, p.fragments, 0..) |fr, f, fi| {
            if (addressNamed(fr.name)) continue;
            if (hand.local.contains(f.path[0 .. f.path.len - 4])) continue;
            const k = try key(gpa, p, fi);
            const gop = try buckets.getOrPut(gpa, k);
            if (!gop.found_existing) gop.value_ptr.* = .empty;
            try gop.value_ptr.append(gpa, .{ .p = pi, .f = fi });
        }
    }

    // Greedy clusters per bucket; one group per stem (the largest).
    var best = std.array_hash_map.String(Group).empty;
    for (buckets.values()) |copies| {
        if (copies.items.len < 2) continue;
        var left = try gpa.dupe(Copy, copies.items);
        while (left.len > 0) {
            var count = std.StringHashMap(usize).init(gpa);
            for (left) |c| (try count.getOrPutValue(own(prepared, c), 0)).value_ptr.* += 1;
            const Rank = struct {
                ps: []const render.Prepared,
                n: *std.StringHashMap(usize),
                h: *const Hand,
                fn lt(r: @This(), a: Copy, z: Copy) bool {
                    const sa = own(r.ps, a);
                    const sz = own(r.ps, z);
                    const ha = r.h.shared.contains(sa);
                    const hz = r.h.shared.contains(sz);
                    if (ha != hz) return ha;
                    const ga = generic(sa);
                    const gz = generic(sz);
                    if (ga != gz) return gz;
                    const na = r.n.get(sa).?;
                    const nz = r.n.get(sz).?;
                    if (na != nz) return na > nz;
                    const o = std.mem.order(u8, sa, sz);
                    if (o != .eq) return o == .lt;
                    return std.mem.lessThan(u8, r.ps[a.p].fragments[a.f].path, r.ps[z.p].fragments[z.f].path);
                }
            };
            std.mem.sort(Copy, left, Rank{ .ps = prepared, .n = &count, .h = &hand }, Rank.lt);
            const lead = left[0];
            const stem = own(prepared, lead);
            var group: std.ArrayList(Copy) = .empty;
            var locals: std.ArrayList([]const [2][]const u8) = .empty;
            try group.append(gpa, lead);
            try locals.append(gpa, &.{});
            for (left[1..]) |c| {
                const dup = for (group.items) |g| {
                    if (g.p == c.p) break true;
                } else false;
                if (dup) continue;
                const name = own(prepared, c);
                // Never alias away a person's name, nor take one the binary has.
                if (!std.mem.eql(u8, name, stem) and (!generic(name) or names[c.p].contains(stem))) continue;
                const la = (try localAliases(gpa, prepared, lead, c, stem)) orelse continue;
                try group.append(gpa, c);
                try locals.append(gpa, la);
            }
            var rest: std.ArrayList(Copy) = .empty;
            for (left) |c| {
                const in = for (group.items) |g| {
                    if (g.p == c.p and g.f == c.f) break true;
                } else false;
                if (!in) try rest.append(gpa, c);
            }
            left = rest.items;
            if (group.items.len < 2) continue;
            const prev = best.get(stem);
            if (prev == null or prev.?.members.len < group.items.len)
                try best.put(gpa, stem, .{ .lead = lead, .stem = stem, .members = group.items, .locals = locals.items });
        }
    }

    var targets = std.StringHashMap(render.Target).init(gpa);
    var files: std.ArrayList(render.File) = .empty;
    var copies: usize = 0;
    for (best.values()) |g| {
        const lp = &prepared[g.lead.p];
        const lfr = lp.layout.frags[g.lead.f];
        // Names the copies spell differently get one common name each.
        const lead_ext = try externals(gpa, lp.fragments[g.lead.f].slots);
        const exts = try gpa.alloc([]const Ext, g.members.len);
        for (g.members, exts) |m, *e| e.* = try externals(gpa, prepared[m.p].fragments[m.f].slots);
        var rename: render.Rename = .{ .own = g.stem, .stem = g.stem, .names = std.StringHashMap([]const u8).init(gpa) };
        var commons = try gpa.alloc(?[]const u8, lead_ext.len);
        var fam = std.StringHashMap(usize).init(gpa);
        const ok = for (lead_ext, 0..) |e0, k| {
            commons[k] = null;
            const same = for (exts) |e| {
                if (!std.mem.eql(u8, e[k].name, e0.name)) break false;
            } else true;
            if (same) continue;
            const fm = family(e0.name);
            const n = try fam.getOrPutValue(fm, 0);
            n.value_ptr.* += 1;
            const common = try std.fmt.allocPrint(gpa, "{s}.{s}{d}", .{ g.stem, fm, n.value_ptr.* });
            // One name in two spaces would need two spellings.
            const r = try rename.names.getOrPut(e0.name);
            if (r.found_existing) break false;
            r.value_ptr.* = common;
            commons[k] = common;
        } else true;
        if (!ok) continue;

        const band = bandOf(lp, g.lead.f, g.stem, &hand);
        const path = if (band.len == 0)
            try std.fmt.allocPrint(gpa, "shared/{s}.asm", .{g.stem})
        else
            try std.fmt.allocPrint(gpa, "shared/{s}/{s}.asm", .{ band, g.stem });
        for (g.members, exts, g.locals) |m, e, la| {
            var aliases: std.ArrayList([2][]const u8) = .empty;
            for (commons, e) |common, x| if (common) |cn| try aliases.append(gpa, .{ cn, x.name });
            const name = own(prepared, m);
            if (!std.mem.eql(u8, name, g.stem)) try aliases.append(gpa, .{ name, g.stem });
            try aliases.appendSlice(gpa, la);
            try targets.put(prepared[m.p].fragments[m.f].path, .{ .path = path, .aliases = aliases.items });
        }
        copies += g.members.len;
        // Address annotations only when every copy sits at the same offset.
        const same_at = for (g.members) |m| {
            if (prepared[m.p].layout.frags[m.f].start != lfr.start) break false;
        } else true;
        const text = try render.renderShared(gpa, lp, g.lead.f, &rename);
        try files.append(gpa, .{ .path = path, .text = if (same_at) text else try stripAddrs(gpa, text) });
    }
    std.debug.print("shared {d} routines across binaries ({d} copies)\n", .{ files.items.len, copies });
    return .{ .targets = targets, .files = files.items };
}

fn own(ps: []const render.Prepared, c: Copy) []const u8 {
    return ps[c.p].layout.frags[c.f].name;
}

/// The bytes that decide whether two fragments are one routine: the bytes
/// with every named field zeroed, each byte's discovery state, and what each
/// field means -- a place inside the fragment, a number, or the k-th outside
/// name (numbered by first use) plus its offset.  Data and a lone ``ret``
/// (nothing to tell copies apart) also carry their name.
fn key(gpa: Allocator, p: *const render.Prepared, fi: usize) ![]const u8 {
    const b = p.layout.b;
    const fr = p.layout.frags[fi];
    const slots = p.fragments[fi].slots;
    var k: std.ArrayList(u8) = .empty;
    const code = b.state[fr.start] == .start;
    const bare_ret = code and b.insn[fr.start] != null and b.insn[fr.start].?.flow == .ret and b.insn[fr.start].?.len == fr.end - fr.start;
    if (!code or bare_ret) try k.print(gpa, "{s}\x00", .{fr.name});
    try k.print(gpa, "{c}{d}\x00", .{ @as(u8, if (code) 'C' else 'D'), fr.end - fr.start });
    const masked = try gpa.dupe(u8, b.data[fr.start..fr.end]);
    for (slots) |s| @memset(masked[s.at..][0..s.size], 0);
    try k.appendSlice(gpa, masked);
    for (b.state[fr.start..fr.end]) |s| try k.append(gpa, @intFromEnum(s));
    var seen = std.StringHashMap(u32).init(gpa);
    for (slots) |s| {
        try k.print(gpa, "\x01{d},{d}", .{ s.at, s.size });
        switch (s.target) {
            .internal => |t| try k.print(gpa, "i{d}", .{t}),
            .absolute => |v| try k.print(gpa, "a{d}", .{v}),
            .external => |e| {
                const id = try std.fmt.allocPrint(gpa, "{d}:{s}", .{ @intFromEnum(e.space), e.name });
                const g = try seen.getOrPut(id);
                if (!g.found_existing) g.value_ptr.* = seen.count() - 1;
                try k.print(gpa, "e{d},{d},{d}", .{ @intFromEnum(e.space), g.value_ptr.*, e.off });
            },
        }
    }
    return k.items;
}

/// The outside names of *slots* in order of first use (the key's numbering).
fn externals(gpa: Allocator, slots: []const render.Slot) ![]const Ext {
    var out: std.ArrayList(Ext) = .empty;
    for (slots) |s| switch (s.target) {
        .external => |e| {
            const known = for (out.items) |x| {
                if (x.space == @intFromEnum(e.space) and std.mem.eql(u8, x.name, e.name)) break true;
            } else false;
            if (!known) try out.append(gpa, .{ .space = @intFromEnum(e.space), .name = e.name });
        },
        else => {},
    };
    return out.items;
}

/// ``own.local equ stem.local`` for each local of copy *m* another fragment
/// of its binary spells in full, at the lead's label for the same byte; null
/// when the lead has no label there, or the names would clash.
fn localAliases(gpa: Allocator, ps: []const render.Prepared, lead: Copy, m: Copy, stem: []const u8) !?[]const [2][]const u8 {
    const ml = ps[m.p].layout;
    const ll = ps[lead.p].layout;
    const mfr = ml.frags[m.f];
    const lfr = ll.frags[lead.f];
    var out: std.ArrayList([2][]const u8) = .empty;
    var it = ml.outside_locals.keyIterator();
    while (it.next()) |x| {
        if (x.* < mfr.start or x.* >= mfr.end) continue;
        const lx = lfr.start + (x.* - mfr.start);
        const v = ll.labels.get(lx) orelse return null;
        if (v[1] == 0) return null;
        const lname = ll.local_names.get(lx).?;
        const mname = ml.local_names.get(x.*).?;
        if (std.mem.eql(u8, mfr.name, stem)) {
            if (!std.mem.eql(u8, lname, mname)) return null;
            continue;
        }
        try out.append(gpa, .{
            try std.fmt.allocPrint(gpa, "{s}{s}", .{ mfr.name, mname }),
            try std.fmt.allocPrint(gpa, "{s}{s}", .{ stem, lname }),
        });
    }
    return out.items;
}

/// Every name a binary's master defines or imports.
fn binaryNames(gpa: Allocator, l: *const render.Layout) !Names {
    var set = Names.init(gpa);
    for (l.frags) |fr| try set.put(fr.name, {});
    for (l.equs.keys()) |n| try set.put(n, {});
    for (l.host_equs.keys()) |n| try set.put(n, {});
    for (l.ext_equs.keys()) |n| try set.put(n, {});
    return set;
}

fn bandOf(p: *const render.Prepared, fi: usize, stem: []const u8, hand: *const Hand) []const u8 {
    const b = p.layout.b;
    const fr = p.layout.frags[fi];
    if (b.state[fr.start] != .start) return "data";
    if (hand.shared.get(stem)) |band| return band;
    if (std.mem.startsWith(u8, stem, "aztec_")) return "aztec";
    if (callsCsav(b, fr.start, p.fragments[fi].slots)) return "game";
    return "library";
}

/// Compiled C: the fragment calls ``aztec_csav`` (a stack frame), anywhere.
fn callsCsav(b: *const an.Bin, start: u32, slots: []const render.Slot) bool {
    for (slots) |s| switch (s.target) {
        .external => |e| if (s.at > 0 and b.data[start + s.at - 1] == 0xE8 and std.mem.eql(u8, e.name, "aztec_csav")) return true,
        else => {},
    };
    return false;
}

fn handOwned(io: std.Io, dir: std.Io.Dir, name: []const u8) bool {
    var buf: [24]u8 = undefined;
    const head = dir.readFile(io, name, &buf) catch return false;
    return !std.mem.startsWith(u8, head, "; auto-generated") and !std.mem.startsWith(u8, head, "/* auto-generated */");
}

fn handSources(gpa: Allocator, io: std.Io, cwd: std.Io.Dir, out_dir: []const u8) !Hand {
    var hand: Hand = .{ .shared = std.StringHashMap([]const u8).init(gpa), .local = std.StringHashMap(void).init(gpa) };
    const dir = cwd.openDir(io, out_dir, .{ .iterate = true }) catch return hand;
    defer dir.close(io);
    var walker = try dir.walk(gpa);
    defer walker.deinit();
    while (try walker.next(io)) |e| {
        if (e.kind != .file or std.mem.startsWith(u8, e.path, "build_out")) continue;
        if (!std.mem.endsWith(u8, e.basename, ".c") and !std.mem.endsWith(u8, e.basename, ".s")) continue;
        if (!handOwned(io, e.dir, e.basename)) continue;
        const base = e.path[0 .. e.path.len - 2];
        if (std.mem.startsWith(u8, base, "shared/")) {
            const rest = base["shared/".len..];
            const slash = std.mem.lastIndexOfScalar(u8, rest, '/');
            const stem = try gpa.dupe(u8, if (slash) |s| rest[s + 1 ..] else rest);
            try hand.shared.put(stem, try gpa.dupe(u8, if (slash) |s| rest[0..s] else ""));
        } else try hand.local.put(try gpa.dupe(u8, base), {});
    }
    return hand;
}

/// *text* without the trailing ``; 0xADDR`` annotation of each line.
fn stripAddrs(gpa: Allocator, text: []const u8) ![]const u8 {
    var out: std.ArrayList(u8) = .empty;
    var lines = std.mem.splitScalar(u8, text, '\n');
    var first = true;
    while (lines.next()) |line| {
        if (!first) try out.append(gpa, '\n');
        first = false;
        try out.appendSlice(gpa, stripAddr(line));
    }
    return out.items;
}

fn stripAddr(line: []const u8) []const u8 {
    const semi = std.mem.lastIndexOf(u8, line, "; 0x") orelse return line;
    for (line[semi + 4 ..]) |ch| if (!std.ascii.isHex(ch)) return line;
    return std.mem.trimEnd(u8, line[0..semi], " \t");
}

/// A content-tagged or address-derived name, not one a person gave.
fn generic(s: []const u8) bool {
    var t = s;
    // Duplicate suffix ``_xxxx``.
    if (hexSuffix(t)) t = t[0 .. t.len - 5];
    if (tagged(t)) return true;
    return hexSuffix(s) or std.mem.eql(u8, s, "routine");
}

/// Ends in a content tag ``_GHIJ`` (letters ``G``-``V``).
fn tagged(t: []const u8) bool {
    if (t.len <= 5 or t[t.len - 5] != '_') return false;
    for (t[t.len - 4 ..]) |ch| if (ch < 'G' or ch > 'V') return false;
    return true;
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
    if (tagged(s)) s = s[0 .. s.len - 5];
    if (s.len == t.len or s.len == 0) return "sym";
    // api_idx_0010 -> api_idx
    if (hexSuffix(s)) s = s[0 .. s.len - 5];
    for (s) |ch| if (!std.ascii.isAlphanumeric(ch) and ch != '_') return "sym";
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

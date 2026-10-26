//! Lean DSAVANT disassembler: reads ``disassembler/sidecar/DSAVANT.json`` and
//! the binaries in ``apps/DSAVANT/``, writes NASM into ``src_DSAVANT/``.
//! Run from the repository root.

const std = @import("std");
const sidecar = @import("sidecar.zig");
const an = @import("analyze.zig");
const names = @import("names.zig");
const render = @import("render.zig");
const shared = @import("shared.zig");

const sidecar_path = "disassembler/sidecar/DSAVANT.json";
/// Aztec C86 v4.2b runtime signatures (built by the Python prebuild).
const signatures_path = ".cache/DSAVANT/aztec_funcs.json";
const app_dir = "apps/DSAVANT";
/// Default output tree; the first argument overrides it.
const default_out_dir = "src_DSAVANT";

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    const gpa = init.arena.allocator();
    const cwd = std.Io.Dir.cwd();
    const argv = try init.minimal.args.toSlice(gpa);
    const out_dir: []const u8 = if (argv.len > 1) argv[1] else default_out_dir;

    const text = try cwd.readFileAlloc(io, sidecar_path, gpa, .unlimited);
    const root = (try std.json.parseFromSliceLeaky(std.json.Value, gpa, text, .{})).object;
    const sigs = try an.loadSignatures(gpa, try cwd.readFileAlloc(io, signatures_path, gpa, .unlimited));
    const routines = sidecar.obj(root, "routines");
    const binaries = sidecar.obj(root, "binaries") orelse return error.NoBinaries;

    var bins = std.StringHashMap(*an.Bin).init(gpa);
    var order: std.ArrayList(*an.Bin) = .empty;
    var it = binaries.iterator();
    while (it.next()) |kv| {
        const sc = kv.value_ptr.object;
        const file = sidecar.str(sc, "file") orelse continue;
        const path = try std.fmt.allocPrint(gpa, "{s}/{s}", .{ app_dir, file });
        const data = cwd.readFileAlloc(io, path, gpa, .unlimited) catch |err| {
            std.debug.print("{s}: SKIP ({s}: {t})\n", .{ kv.key_ptr.*, path, err });
            continue;
        };
        const b = try an.Bin.init(gpa, kv.key_ptr.*, data, sc);
        try bins.put(b.name, b);
        try order.append(gpa, b);
    }
    // Overlays run in the host's code and data segments.
    var host: ?*an.Bin = null;
    for (order.items) |b| if (b.kind == .mz and std.mem.eql(u8, b.name, "ds")) {
        host = b;
    };
    for (order.items) |b| if (b.kind == .overlay) {
        b.host = host;
    };

    for (order.items) |b| {
        try b.discover(sigs);
        try b.finishRoots();
        try names.nameRoutines(b, &bins, routines);
    }

    var layouts = std.StringHashMap(*render.Layout).init(gpa);
    for (order.items) |b| try layouts.put(b.name, try render.layout(gpa, b));
    const host_layout = if (host) |h| layouts.get(h.name) else null;
    // Host-space data starts any binary names are one object in all of them.
    const host_starts = try gpa.create(std.AutoHashMap(u16, void));
    host_starts.* = std.AutoHashMap(u16, void).init(gpa);
    for (order.items) |b| {
        if (b.kind == .driver) continue;
        const l = layouts.get(b.name).?;
        var kit = l.ds_starts.keyIterator();
        while (kit.next()) |k| if (b.kind != .overlay or k.* < b.dorg) try host_starts.put(k.*, {});
        l.host_starts = host_starts;
    }

    var prepared: std.ArrayList(render.Prepared) = .empty;
    for (order.items) |b| {
        const l = layouts.get(b.name).?;
        try prepared.append(gpa, try render.prepare(gpa, l, if (b.kind == .overlay) host_layout else null));
        var code: usize = 0;
        for (b.state[b.code_lo..b.code_hi]) |s| {
            if (s == .start or s == .cont) code += 1;
        }
        std.debug.print("{s:<9} {d:>6} bytes  code {d:>6}/{d:<6} routines {d:>4}  tables {d:>3}\n", .{
            b.name, b.data.len, code, b.code_hi - b.code_lo, l.frags.len, b.tables.items.len,
        });
    }

    const resolution = try shared.resolve(gpa, prepared.items);
    var files: std.ArrayList(render.File) = .empty;
    for (prepared.items) |binary| try render.emit(gpa, binary, resolution, &files);
    try files.appendSlice(gpa, resolution.files);

    try removeGenerated(io, gpa, cwd, out_dir);
    for (files.items) |f| {
        const path = try std.fmt.allocPrint(gpa, "{s}/{s}", .{ out_dir, f.path });
        if (std.fs.path.dirname(path)) |d| try cwd.createDirPath(io, d);
        try cwd.writeFile(io, .{ .sub_path = path, .data = f.text });
    }
    std.debug.print("wrote {d} files into {s}/\n", .{ files.items.len, out_dir });
}

/// Delete every generated ``.asm`` (first line ``; auto-generated``) so the
/// tree holds exactly this run's output.  C, headers and ``.s`` stay.
fn removeGenerated(io: std.Io, gpa: std.mem.Allocator, cwd: std.Io.Dir, out_dir: []const u8) !void {
    const dir = cwd.openDir(io, out_dir, .{ .iterate = true }) catch return;
    defer dir.close(io);
    var walker = try dir.walk(gpa);
    defer walker.deinit();
    var doomed: std.ArrayList([]const u8) = .empty;
    while (try walker.next(io)) |e| {
        if (e.kind != .file or !std.mem.endsWith(u8, e.basename, ".asm")) continue;
        if (std.mem.startsWith(u8, e.path, "build_out")) continue;
        var buf: [16]u8 = undefined;
        const head = e.dir.readFile(io, e.basename, &buf) catch continue;
        if (std.mem.eql(u8, head, "; auto-generated")) try doomed.append(gpa, try gpa.dupe(u8, e.path));
    }
    for (doomed.items) |p| try dir.deleteFile(io, p);
}

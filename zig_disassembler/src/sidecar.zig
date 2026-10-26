//! Accessors over the parsed sidecar (``disassembler/sidecar/DSAVANT.json``).

const std = @import("std");
const Value = std.json.Value;
const ObjectMap = std.json.ObjectMap;

pub fn str(o: ObjectMap, key: []const u8) ?[]const u8 {
    return switch (o.get(key) orelse return null) {
        .string => |s| s,
        else => null,
    };
}

pub fn int(o: ObjectMap, key: []const u8) ?i64 {
    return switch (o.get(key) orelse return null) {
        .integer => |i| i,
        else => null,
    };
}

pub fn obj(o: ObjectMap, key: []const u8) ?ObjectMap {
    return switch (o.get(key) orelse return null) {
        .object => |m| m,
        else => null,
    };
}

pub fn arr(o: ObjectMap, key: []const u8) []Value {
    return switch (o.get(key) orelse return &.{}) {
        .array => |a| a.items,
        else => &.{},
    };
}

/// A hex offset spelled ``"2f36"`` / ``"0x2f36"``, or a plain integer.
pub fn hex(v: Value) ?u32 {
    return switch (v) {
        .integer => |i| if (i >= 0 and i <= std.math.maxInt(u32)) @as(u32, @intCast(i)) else null,
        .string => |s| hexStr(s),
        else => null,
    };
}

pub fn hexStr(s: []const u8) ?u32 {
    const t = if (std.mem.startsWith(u8, s, "0x")) s[2..] else s;
    return std.fmt.parseInt(u32, t, 16) catch null;
}

/// ``{"hex": {"name": ...}}`` -> name of entry *key*.
pub fn entryName(v: Value) ?[]const u8 {
    return switch (v) {
        .object => |o| str(o, "name"),
        .string => |s| s,
        else => null,
    };
}

const std = @import("std");
const mem = std.mem;
pub const ColorBand = enum {
    black,
    brown,
    red,
    orange,
    yellow,
    green,
    blue,
    violet,
    grey,
    white,
};

pub const Error = error{OutOfMemory};

pub fn label(allocator: mem.Allocator, colors: []const ColorBand) mem.Allocator.Error![]u8 {
    const c1: f64 = @intFromEnum(colors[0]);
    const c2: f64 = @intFromEnum(colors[1]);
    const c3: usize = @intFromEnum(colors[2]);

    var ans: f64 = c1 * 10 + c2;
    for (0..c3) |_| {
        ans = ans * 10;
    }

    var unit: []const u8 = "ohms";
    if (ans >= 1e9) {
        ans /= 1e9;
        unit = "gigaohms";
    } else if (ans >= 1e6) {
        ans /= 1e6;
        unit = "megaohms";
    } else if (ans >= 1e3) {
        ans /= 1e3;
        unit = "kiloohms";
    }

    return std.fmt.allocPrint(allocator, "{d} {s}", .{ ans, unit });
}

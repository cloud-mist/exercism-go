const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    const table = allocator.alloc(bool, limit) catch unreachable;
    defer allocator.free(table);

    @memset(table, false); // 初始化

    for (0..limit) |l| {
        const i = @as(u32, @intCast(l));
        for (factors) |f| {
            if (f != 0 and i % f == 0) {
                table[i] = true;
                break;
            }
        }
    }

    var res: u64 = 0;
    for (table, 0..) |t, i| {
        if (t) {
            res += i;
        }
    }
    return res;
}

const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    if (limit == 0) {
        return 0;
    }

    const table = allocator.alloc(bool, limit) catch unreachable;
    defer allocator.free(table);

    @memset(table, false); // 初始化

    for (factors) |f| {
        if (f == 0) continue;
        var m = f;
        while (m < limit) : (m += f) {
            table[m] = true;
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

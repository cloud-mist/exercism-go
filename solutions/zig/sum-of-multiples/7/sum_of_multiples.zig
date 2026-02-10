const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    if (limit == 0) {
        return 0;
    }

    var bit_set = try std.DynamicBitSet.initEmpty(allocator, limit);
    defer bit_set.deinit();

    // 将所有倍数的位置 置为1
    for (factors) |f| {
        if (f == 0) continue;

        var m = f;
        while (m < limit) : (m += f) {
            bit_set.set(m);
        }
    }

    var res: u64 = 0;
    var it = bit_set.iterator(.{});
    while (it.next()) |i| {
        res += i;
    }

    return res;
}

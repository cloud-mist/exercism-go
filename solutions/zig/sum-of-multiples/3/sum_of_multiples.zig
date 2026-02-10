const std = @import("std");

pub fn sum(allocator: std.mem.Allocator, factors: []const u32, limit: u32) !u64 {
    if (limit == 0) return 0;

    // 1. 初始化动态位图 (仅占 limit / 8 字节)
    // DynamicBitSet.initEmpty 内部会调用 allocator.alloc 并自动处理内存置零
    var bit_set = try std.DynamicBitSet.initEmpty(allocator, limit);
    defer bit_set.deinit();

    // 2. 主动出击：直接标记所有因子的倍数
    // 这种写法比逐个检查每个数字是否被整除要快得多 (O(N/f) vs O(N))
    for (factors) |f| {
        if (f == 0) continue;

        var multiple = f;
        while (multiple < limit) : (multiple += f) {
            bit_set.set(multiple);
        }
    }

    // 3. 利用位图迭代器求和
    var res: u64 = 0;
    var it = bit_set.iterator(.{});
    while (it.next()) |i| {
        res += i;
    }

    return res;
}

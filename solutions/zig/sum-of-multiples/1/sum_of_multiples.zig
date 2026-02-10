const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    _ = allocator;

    var res: u64 = 0;
    var i: u32 = 0;
    while (i < limit) : (i += 1) {
        for (factors) |f| {
            if (f != 0 and i % f == 0) {
                res += i;
                break;
            }
        }
    }
    return res;
}

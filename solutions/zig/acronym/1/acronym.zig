const std = @import("std");
const mem = std.mem;

pub fn abbreviate(allocator: mem.Allocator, words: []const u8) mem.Allocator.Error![]u8 {
    const res = try allocator.alloc(u8, words.len);

    var index: usize = 0;
    var flag: bool = true;

    for (words) |c| {
        if (c == ' ' or c == '-') {
            flag = true;
            continue;
        }

        if (flag and std.ascii.isAlphabetic(c)) {
            res[index] = std.ascii.toUpper(c);
            index += 1;
            flag = false;
        }
    }

    return allocator.realloc(res, index);
}

pub fn isPangram(str: []const u8) bool {
    var res: u32 = 0;
    for (str) |c| {
        if (c >= 'A' and c <= 'Z') {
            res |= @as(u32, 1) << @intCast(c - 'A');
        } else if (c >= 'a' and c <= 'z') {
            res |= @as(u32, 1) << @intCast(c - 'a');
        }
    }
    return res == 0x3ffffff;
}

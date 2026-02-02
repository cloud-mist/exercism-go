/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    const lens = s.len;
    if (lens == 0) return buffer[0..0];
    for (0..lens) |i| {
        buffer[i] = s[lens - 1 - i];
    }
    return buffer[0..lens];
}

const std = @import("std");
pub const ColorBand = enum { // 默认从0开始
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

pub fn colorCode(color: ColorBand) usize {
    return @intFromEnum(color); // 将enum转换为值
}

pub fn colors() []const ColorBand {
    return std.enums.values(ColorBand);
}

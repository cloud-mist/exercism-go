const std = @import("std");
pub const ChessboardError = error{IndexOutOfBounds};
pub fn square(index: usize) ChessboardError!u64 {
    if (index < 1 or index > 64) {
        return ChessboardError.IndexOutOfBounds;
    }
    return std.math.pow(u64, 2, index - 1);
}

pub fn total() u64 {
    return @as(u64, @intCast(std.math.pow(u128, 2, 64) - 1));
}

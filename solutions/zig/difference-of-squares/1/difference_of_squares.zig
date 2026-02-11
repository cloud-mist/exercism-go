const std = @import("std");
pub fn squareOfSum(number: usize) usize {
    const tmp = (1 + number) * number / 2;
    return std.math.pow(usize, tmp, 2);
}

pub fn sumOfSquares(number: usize) usize {
    return number * (number + 1) * (2 * number + 1) / 6;
}

pub fn differenceOfSquares(number: usize) usize {
    const r1 = squareOfSum(number);
    const r2 = sumOfSquares(number);
    if (r1 <= r2) {
        return r2 - r1;
    }
    return r1 - r2;
}

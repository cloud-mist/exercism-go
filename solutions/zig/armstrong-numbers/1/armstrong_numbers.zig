const std = @import("std");
pub fn isArmstrongNumber(num: u128) bool {
    var num1 = num;
    var res: u128 = 0;
    var length: u32 = 0;
    while (num1 != 0) : (num1 /= 10) {
        length += 1;
    }

    num1 = num;
    while (num1 != 0) : (num1 /= 10) {
        const tmp = num1 % 10;
        res += std.math.pow(u128, tmp, length);
    }
    return res == num;
}

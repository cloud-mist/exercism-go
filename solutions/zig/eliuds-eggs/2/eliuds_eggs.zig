pub fn eggCount(number: usize) usize {
    var res: usize = 0;
    var num = number;

    while (num > 0) : (num >>= 1) {
        res += num & 1;
    }
    return res;
}

pub fn eggCount(number: usize) usize {
    var res: usize = 0;
    var num = number;
    while (num > 0) {
        const t1 = num % 2;
        if (t1 == 1) {
            res += 1;
            num = (num - 1) / 2;
        } else {
            num /= 2;
        }
    }
    return res;
}

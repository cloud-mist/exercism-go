pub fn squareRoot(radicand: usize) usize {
    for (1..radicand / 2 + 2) |i| {
        if (i * i == radicand) {
            return i;
        }
    }
    return 0;
}

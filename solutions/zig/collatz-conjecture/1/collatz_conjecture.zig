pub const ComputationError = error{
    IllegalArgument,
};

pub fn steps(num: usize) anyerror!usize {
    var number = num;
    if (number == 0) {
        return ComputationError.IllegalArgument;
    }

    var step: u32 = 0;
    while (number != 1) : (step += 1) {
        if (number % 2 == 0) {
            number /= 2;
        } else {
            number = number * 3 + 1;
        }
    }

    return step;
}

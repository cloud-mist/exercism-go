pub fn isLeapYear(year: u32) bool {
    if ((year % 400 == 0) or (year % 100 != 0 and year % 4 == 0)) return true else return false;
}

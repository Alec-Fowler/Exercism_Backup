pub fn isLeapYear(year: u32) bool {
    return if ((year % 4 == 0 and year % 100 != 0) or year % 100 == 0 and year % 400 == 0  ) true else false;
}

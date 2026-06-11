const std = @import("std");
pub fn convert(buffer: []u8, n: u32) []const u8 {
    var length:usize = 0;
    if (n % 3 == 0) {
        const StringOne = "Pling";
        @memcpy(buffer[length..length + StringOne.len], StringOne);
        length += StringOne.len;
    }
    if (n % 5 == 0) {
        const StringTwo = "Plang";
        @memcpy(buffer[length..length + StringTwo.len], StringTwo);
        length += StringTwo.len;
    }
    if (n % 7 == 0) {
        const StringThree = "Plong";
        @memcpy(buffer[length..length + StringThree.len], StringThree);
        length += StringThree.len;
    }
    if (n % 3 != 0 and n % 5 != 0 and n % 7 != 0 ) {
        return std.fmt.bufPrint(buffer, "{d}", .{n}) catch unreachable;
    }

    return buffer[0..length];

}

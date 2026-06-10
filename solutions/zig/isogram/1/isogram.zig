const std = @import("std");
pub fn isIsogram(input: []const u8) bool {
    var count: i32 = 0;

    for (input) |character| {
        count = 0;
        for (0..input.len) |i| {
            if (std.ascii.toLower(character) == std.ascii.toLower(input[i]) and std.ascii.isAlphabetic(character)) {
                count += 1;
            }
        }
        if (count >= 2) {
            return false;
        }
    }
    return true;
}

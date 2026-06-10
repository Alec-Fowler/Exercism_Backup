const std = @import("std");
pub fn isPangram(str: []const u8) bool {
    var numFound: u32 = 0;
    if (str.len >= 26){
        for (std.ascii.lowercase) | letter| {
            for (str) |character| {
                if (letter == std.ascii.toLower(character)){
                    numFound += 1;
                    break;
                }
            }
        }
        if (numFound == 26){
            return true;
        }
        else {
            return false;
        }

    }
    return false;
}


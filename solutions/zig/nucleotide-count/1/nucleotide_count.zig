const std = @import("std");
pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32,
    c: u32,
    g: u32,
    t: u32,
};

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var adenine: u32 = 0;
    var cytosine: u32 = 0;
    var guanine: u32 = 0;
    var thymine: u32 = 0;
    for (s) | nucleotide | {
        switch (std.ascii.toLower(nucleotide)) {
            'a' => adenine = adenine + 1,
            'c' => cytosine = cytosine + 1,
            'g' => guanine = guanine + 1,
            't' => thymine = thymine + 1,
            else => return NucleotideError.Invalid,
        }
    }
    const count = Counts{.a = adenine, .c = cytosine, .g = guanine, .t = thymine};
    return count;
}

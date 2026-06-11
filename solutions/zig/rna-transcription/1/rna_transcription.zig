const std = @import("std");
const mem = std.mem;

pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    var rna : std.ArrayList(u8) = .empty;
    defer rna.deinit (allocator);
    for (dna) |nucleotide| {
        const compliment: u8 = switch (nucleotide) {
            'G' => 'C',
            'C' => 'G',
            'T' => 'A',
            'A' => 'U',
            else => unreachable,
        };
        try rna.append(allocator, compliment);
    }
    return rna.toOwnedSlice(allocator);
}

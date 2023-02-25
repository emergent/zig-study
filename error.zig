const std = @import("std");
const stdout = std.io.getStdOut().writer();
const print = std.debug.print;
const assert = std.debug.assert;

pub fn main() !void {
    try stdout.print("hello\n", .{});

    const res = try parseU64();
    try stdout.print("{}\n", .{res});
}

fn parseU64() !u64 {
    const digit = 100;
    const radix = 10;
    if (digit > radix) {
        return error.Invalid;
    }
}

test "error kaesu" {
    const err = parseU64();
    try std.testing.expect(err == error.Invalid);
}

const std = @import("std");
const print = std.debug.print;
const assert = std.debug.assert;

pub fn main() void {
    const fdiv: f32 = 7.0 / 3.0;
    print("{}\n", .{fdiv});

    const idiv: i32 = 7 / 3;
    print("{}\n", .{idiv});

    const imod: i32 = 7 % 3;
    print("{}\n", .{imod});

    // optional
    var opt: ?i32 = null;
    assert(opt == null);
    print("optional value's type: {}, value: {?}\n", .{ @TypeOf(opt), opt });

    opt = 100;
    print("optional value's type: {}, value: {?}\n", .{ @TypeOf(opt), opt });

    // error union
    var res: anyerror!i32 = error.ArgNotFound;
    print("error union value's type: {}, value: {!}\n", .{ @TypeOf(res), res });

    res = 200;
    print("error union value's type: {}, value: {!}\n", .{ @TypeOf(res), res });
}

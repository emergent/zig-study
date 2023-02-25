const std = @import("std");

const MyStruct = struct {
    x: i32,
    y: i32,

    // メソッドを定義する
    pub fn sum(self: *const MyStruct) i32 {
        return self.*.x + self.*.y;
    }
};

pub fn main() !void {
    var myStruct = MyStruct{.x =10, .y= 20};
    const sum = myStruct.sum();
    std.debug.print("sum = {}\n", .{sum});
}

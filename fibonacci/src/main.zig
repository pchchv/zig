const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var a: i16 = 0;
    var b: i16 = 1;
    var nextnum: i16 = 0;
    const n: i16 = 10000;

    print("{},{},", .{ a, b });
    nextnum = a + b;
    while (nextnum <= n) {
        print("{},", .{nextnum});
        a = b;
        b = nextnum;
        nextnum = a + b;
    }
    print("\n", .{});
}

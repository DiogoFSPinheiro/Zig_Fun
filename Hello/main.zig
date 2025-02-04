const std = @import("std");

const Error = error{Failed};



pub fn getStr() ![]const u8
{
    const do = true;

    if(!do)
        return Error.Failed;
    
    return "Hello World";
}


pub fn main() !void
{
    var c :i32 = 0;

    while (c < 6)
    {
        std.debug.print("C is -> {} {} \n", .{c, c - 1});
        c += 1;
    }
    const str = getStr() catch |err|
    {
        std.debug.print("Error occurred: {}\n", .{err});
        return err;
    };
    std.debug.print("{s}\n", .{str});
}
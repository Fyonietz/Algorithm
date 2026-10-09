const std = @import("std");

//Step We Got
//1.Convert i32 To u8 AKA Integer To String Via ASCII Table

pub fn number_to_string(buffer: *[1024]u8, input: u32) usize{
    var data = input;
    var i: usize = 0;
    var number_iteration : usize = 0;
    while (data > 0) : (i += 1) {
        if (data % 2 == 0) {
            std.debug.print("Input {d}/2, Allocate : {d}\n",.{data,0});
            data = data / 2;
            buffer[i] = 0;
            number_iteration += 1;
        } else {
            std.debug.print("Input {d}/2, Allocate : {d}\n",.{data,1});
            data = data / 2;
            buffer[i] = 1;
            number_iteration += 1;

        }
    }
    return number_iteration;
}

pub fn main() !void {
    var buffer: [1024]u8 = undefined;
    // var slice :[]u8 = buffer[0..];
    const count = number_to_string(&buffer, 22);
    
    std.debug.print("Buffer PrintOut : {any}",.{buffer[0..count]});

}

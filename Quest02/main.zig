const std = @import("std");

//Step We Got
//1.Convert i32 To u8 AKA Integer To String Via ASCII Table

//Check The Lenght Of Input
//Make Cursor for Left[Start]
//Make Cursor for Right[End]
//Swap Between Cursor
pub fn reverse_binary(input: []u8) []u8 {
    var left: usize = 0;
    var right: usize = input.len;
    while (left < right) {
        const temp = input[left];
        input[left] = input[right - 1];
        input[right - 1] = temp;

        left += 1;
        right -= 1;
    }
    var j : usize = 0;
    while (j < input.len):(j+=1){
        input[j] = if (input[j] % 2 == 0) '0' else '1';
    }
    return input;
}

pub fn number_to_string(buffer: *[1024]u8, input: u32) []u8 {
    var data = input;
    var i: usize = 0;
    var number_iteration: usize = 0;
    while (data > 0) : (i += 1) {
        if (data % 2 == 0) {
            std.debug.print("Input {d}/2, Allocate : {d}\n", .{ data, 0 });
            data = data / 2;
            buffer[i] = 0;
            number_iteration += 1;
        } else {
            std.debug.print("Input {d}/2, Allocate : {d}\n", .{ data, 1 });
            data = data / 2;
            buffer[i] = 1;
            number_iteration += 1;
        }
    }
    std.debug.print("Number Before Reverse : {any}\n\n", .{buffer[0..number_iteration]});
    return buffer[0..number_iteration];
}

pub fn main() !void {
    var buffer: [1024]u8 = undefined;
    const data: []u8 = number_to_string(&buffer, 22);
    const number = reverse_binary(data);
    std.debug.print("The Result : {s}", .{number});
}

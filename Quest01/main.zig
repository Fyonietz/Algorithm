const std = @import("std");

pub fn main() void {
    const data: []const u8 = "1110" ; // 14
    var root: u32 = 1;
    var i: usize = 0;
    var data_to_number : u32 = 0;
    var result : u32 = 0;
    while (i <  data.len) : (i+=1) {
        data_to_number = data[data.len - 1 - i] - '0';
        data_to_number *= root;
        root *= 2;
        result += data_to_number;
    }
    std.debug.print("The Desimal Of {s} Is : {d}\n", .{data,result});
}
    

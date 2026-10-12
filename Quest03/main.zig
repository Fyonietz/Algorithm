const print = @import("std").debug.print;
const testing = @import("std").testing;
const Mem = enum {
    IsNumber,
    IsChar,
    IsUnknown
};
const Node = struct{
    Type : Mem,
    Position:usize
};


const Lexer = struct {
    content :[]const u8,
    cursor : usize,
    buffer:*[1024]u8,
    buffer_cursor : usize = 0,

    pub fn peek(self : *@This()) !void{
        if(self.content.len < self.cursor){
            return error.OutOfMemory;
        }
        print("\nThe Content : {s}\nThe Content Lenght : {d}\nThe Cursor Position : {d}\n",.{self.content,self.content.len,self.cursor});
    }

};


pub fn main() !void{
    const content :[]const u8 = "1F";
    var buffer : [1024]u8 = undefined;
    var lexer : Lexer =.{
        .content = content,
        .cursor = 0,
        .buffer = &buffer
    };
    const seek =  lexer.get_node_value();
    print("Node Value {d}\n",.{seek});
    
    print("Buffer Data {any}\n",.{buffer[0..lexer.cursor-1]});

}


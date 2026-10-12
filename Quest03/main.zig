const print = @import("std").debug.print;
const testing = @import("std").testing;
const Mem = enum {
    IsNumber,
    IsChar,
    IsUnknown
};


const Lexer = struct {
    content :[]const u8,
    cursor : usize,
    buffer:*[1024]u8,

    pub fn peek(self : *@This()) !void{
        if(self.content.len < self.cursor){
            return error.OutOfMemory;
        }
        print("\nThe Content : {s}\nThe Content Lenght : {d}\nThe Cursor Position : {d}\n",.{self.content,self.content.len,self.cursor});
    }

    pub fn seek(self : *@This()) !Mem{
            while(self.cursor < self.content.len){
                print("Character Value For Iterating : {c}\n",.{self.content[self.cursor]});
                self.cursor+=1;
                if(self.content[self.cursor] <= 59 and self.content[self.cursor] >= 48){
                    print("\nThe Content : {s}\nThe Content Lenght : {d}\nThe Cursor Position : {d}\n",.{self.content,self.content.len,self.cursor});
                    self.cursor+=1;
                    return Mem.IsNumber;
                }
                if(self.content[self.cursor] <= 65 and self.content[self.cursor] >= 70){
                    print("\nThe Content : {s}\nThe Content Lenght : {d}\nThe Cursor Position : {d}\n",.{self.content,self.content.len,self.cursor});
                    self.cursor+=1;
                    return Mem.IsChar;
                }
                print("\nThe Content : {s}\nThe Content Lenght : {d}\nThe Cursor Position : {d}\n",.{self.content,self.content.len,self.cursor});
                print("Reach Here\n",.{});
                print("Number Of Iteration : {d}\n",.{self.cursor});
                self.cursor+=1;
                return Mem.IsUnknown;
        }
        return error.UnknownCharacter;
    }
};


pub fn main() !void{
    const content :[]const u8 = "1A3";
    var buffer : [1024]u8 = undefined;
    var lexer : Lexer =.{
        .content = content,
        .cursor = 0,
        .buffer = &buffer
    };
    const seek = try lexer.seek();
    if(seek == Mem.IsUnknown){
        print("Please Provide Hex Number Or Alphabet\n",.{});
    }

}

test "Seek" {
    const content :[]const u8 = "Hello";
    var buffer : [1024]u8 = undefined;
    var lexer : Lexer =.{
        .content = content,
        .cursor = 0,
        .buffer = &buffer
    };
    const seek =try lexer.seek();
    try testing.expectEqual(Mem.IsUnknown, seek);
}

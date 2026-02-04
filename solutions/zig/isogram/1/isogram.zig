const std = @import("std");
pub fn isIsogram(str: []const u8) bool {
    var res = [1]u8{0} ** 26;
    for (str) |c| {
        if (c == '-' or c == ' ') {
            continue;
        }    
        const lc = std.ascii.toLower(c);
        res[lc-'a']+=1;
        if (res[lc-'a']>=2){
            return false;
        }
    }

   return true;
}

pub const TriangleError = error{Invalid};

pub const Triangle = struct {
    a: f64,
    b: f64,
    c: f64,
    pub fn init(a: f64, b: f64, c: f64) TriangleError!Triangle {
        if (a + b >= c and a + c >= b and b + c >= a and a > 0 and b > 0 and c > 0) {
            return .{ .a = a, .b = b, .c = c };
        }
        return error.Invalid;
    }

    pub fn isEquilateral(self: Triangle) bool {
        return self.a == self.b and self.b == self.c;
    }

    pub fn isIsosceles(self: Triangle) bool {
        return (self.a == self.b) or (self.b == self.c) or (self.c == self.a);
    }

    pub fn isScalene(self: Triangle) bool {
        return (self.a != self.b) and (self.b != self.c) and (self.c != self.a);
    }
};

pub const Coordinate = struct {
    x: f32,
    y: f32,

    pub fn init(x_coord: f32, y_coord: f32) Coordinate {
        return Coordinate{
            .x = x_coord,
            .y = y_coord,
        };
    }
    pub fn score(self: Coordinate) usize {
        const tmp: f32 = self.x * self.x + self.y * self.y;
        return if (tmp <= 1) 10 else if (tmp <= 25) 5 else if (tmp <= 100) 1 else 0;
    }
};

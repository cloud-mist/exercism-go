const std = @import("std");
pub const HighScores = struct {
    scores: []const i32,
    top_three: [3]i32,
    top_count: usize,

    pub fn init(scores: []const i32) HighScores {
        var t1: i32 = -1;
        var t2: i32 = -1;
        var t3: i32 = -1;

        for (scores) |s| {
            if (s >= t1) {
                t3 = t2;
                t2 = t1;
                t1 = s;
            } else if (s >= t2) {
                t3 = t2;
                t2 = s;
            } else if (s >= t3) {
                t3 = s;
            }
        }

        return .{
            .scores = scores,
            .top_three = [3]i32{ t1, t2, t3 },
            .top_count = if (scores.len < 3) scores.len else 3,
        };
    }

    pub fn latest(self: *const HighScores) ?i32 {
        const length: usize = self.scores.len;

        if (length == 0) {
            return null;
        }

        return self.scores[length - 1];
    }

    pub fn personalBest(self: *const HighScores) ?i32 {
        if (self.scores.len == 0) {
            return null;
        }
        return self.top_three[0];
    }

    pub fn personalTopThree(self: *const HighScores) []const i32 {
        return self.top_three[0..self.top_count];
    }
};

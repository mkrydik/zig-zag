//! Fizz Buzz in Zig

const std = @import("std");

/// Main
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Zig Zag : Start\n\n", .{});

    const zig_ltr = "└─┐";
    const zig_rtl = "┌─┘";

    var count: u8 = 1;
    var is_zig: bool = false;
    while (count <= 100) : (count += 1) {
        // 数値部分を右揃えにする : 3桁の数値までしか対応できていない…
        if (count <= 9) try stdout.writeByteNTimes(' ', 1);
        if (count <= 99) try stdout.writeByteNTimes(' ', 1);

        // Zig Zag な罫線
        const bar = if (is_zig) zig_rtl else zig_ltr;

        if (count % 3 == 0 and count % 5 == 0) {
            // Zig Zag : 2行出力する
            try stdout.print("{}  {s}  ->  Zig Zag\n", .{ count, bar });

            const bar_end = if (is_zig) zig_ltr else zig_rtl;
            try stdout.writeByteNTimes(' ', 5);
            try stdout.print("{s}\n", .{bar_end});
        } else if (count % 3 == 0) {
            try stdout.print("{}  {s}  ->  Zig\n", .{ count, bar });
            is_zig = !is_zig;
        } else if (count % 5 == 0) {
            try stdout.print("{}  {s}  ->  Zag\n", .{ count, bar });
            is_zig = !is_zig;
        } else {
            // 罫線位置を調整する
            const space = if (is_zig) "  " else "";
            try stdout.print("{}  {s}│\n", .{ count, space });
        }
    }

    try stdout.print("\nZig Zag : Finished\n", .{});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}

module aoc2022_4
export first_assignment, second_assignment, handle_line

function overlaps_fully(x1::Int, y1::Int, x2::Int, y2::Int)
    (x1 <= x2 && y1 >= y2) || (x2 <= x1 && y2 >= y1)
end

function overlaps_partly(x1::Int, y1::Int, x2::Int, y2::Int)
    overlaps_fully(x1::Int, y1::Int, x2::Int, y2::Int) ||
        max(y1, y2) - min(x1, x2) <= (y1 - x1) + (y2 - x2)
end

function handle_line(line::String, overlaps)
    ranges = split(line, ",")
    f = split(ranges[1], "-")
    s = split(ranges[2], "-")
    x1 = parse(Int64, f[1])
    y1 = parse(Int64, f[2])
    x2 = parse(Int64, s[1])
    y2 = parse(Int64, s[2])
    overlaps(x1, y1, x2, y2)
end

function solve(path::String, overlap_f)
    res = 0
    for line in eachline(path)
        if handle_line(line, overlap_f)
            res += 1
        end
    end
    res
end

function first_assignment(path::String)
    solve(path, overlaps_fully)
end

function second_assignment(path::String)
    solve(path, overlaps_partly)
end
end
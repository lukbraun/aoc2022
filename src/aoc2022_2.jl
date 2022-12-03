module aoc2022_2
export first_assignment, second_assignment, process_line_1, process_line_2

result_table = Dict(
    "A X" => 4,
    "B Y" => 5,
    "C Z" => 6, "B X" => 1,
    "C Y" => 2,
    "A Z" => 3, "C X" => 7,
    "B Z" => 9,
    "A Y" => 8,
)

replace_by = Dict(
    "A X" => "A Z",
    "A Y" => "A X",
    "A Z" => "A Y", "B X" => "B X",
    "B Y" => "B Y",
    "B Z" => "B Z", "C X" => "C Y",
    "C Y" => "C Z",
    "C Z" => "C X",
)

function process_line_1(line)
    result_table[line]
end

function first_assignment(path::String)
    score = 0

    for line in eachline(path)
        score += process_line_1(line)
    end

    score
end

function process_line_2(line)
    picked = replace_by[line]
    process_line_1(picked)
end

function second_assignment(path::String)
    score = 0

    for line in eachline(path)
        score += process_line_2(line)
    end

    score
end
end
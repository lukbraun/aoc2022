module aoc2022_3
export first_assignment, second_assigment, get_first_part, get_second_part, middle_index, calculate_priority, find_in_both, process_lines_2, find_common_badge

function middle_index(rucksack::String)
    trunc(Int, length(rucksack) / 2)
end

function get_first_part(rucksack::String)
    l = middle_index(rucksack)
    rucksack[1:l]
end

function get_second_part(rucksack::String)
    l = middle_index(rucksack) + 1
    rucksack[l:length(rucksack)]
end

function calculate_priority(item::Char)
    if islowercase(item)
        Int(item) - 97 + 1
    else
        Int(item) - 65 + 27
    end
end

function find_in_both(rucksack::String)
    f = get_first_part(rucksack)
    s = get_second_part(rucksack)
    for i in 1:length(f)
        if occursin(f[i], s)
            return f[i]
        end
    end
end

function process_line_1(line::String)
    l = find_in_both(line)
    calculate_priority(l)
end

function first_assignment(path::String)
    res = 0
    for line in eachline(path)
        res += process_line_1(line)
    end
    res
end

function find_common_badge(rucksack1::String, rucksack2::String, rucksack3::String)
	for i in 1:length(rucksack1)
		if occursin(rucksack1[i], rucksack2) && occursin(rucksack1[i], rucksack3)
			return rucksack1[i]
		end
	end
end

function process_lines_2(rucksack1::String, rucksack2::String, rucksack3::String)
    calculate_priority(find_common_badge(rucksack1, rucksack2, rucksack3))
end

function second_assignment(path::String)
    res = 0
    lines = readlines(path)
    for i in 1:3:length(lines)
        res += process_lines_2(lines[i], lines[i+1], lines[i+2])
    end
    res
end
end
module aoc2022_1
export first_assignment, second_assignment

calories = []

function calories_per_elf(path::String)
    temp_cal = 0
    for line in eachline(path)
        if line == ""
            push!(calories, temp_cal)
            temp_cal = 0
        else
            temp_cal += parse(Int64, line)
        end
    end
end

function calculate(path::String)
    if isempty(calories)
        calories_per_elf(path)
    end
end

function first_assignment(path::String)
    calculate(path)
    maximum(calories)
end

function second_assignment(path::String)
    calculate(path)
    sum(sort(calories, rev=true)[1:3])
end
end
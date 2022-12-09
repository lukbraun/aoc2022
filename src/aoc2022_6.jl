module aoc2022_6
export first_assignment, second_assignment

function different(line::String, dim::Int)
    for i in 1:dim
        for j in 1:dim
            if i != j && line[i] == line[j]
                return false
            end
        end
    end
    true
end

function check_string(line::String, dim::Int)
    for i in 1:(length(line) - dim)
        if different(string(SubString(line, i, i + dim + 1)), dim)
            return i + dim - 1
        end
    end
    -1
end

function execute(path::String, dim::Int)
    line = readline(path)
    check_string(line, dim)
end

function first_assignment(path::String)
    execute(path, 4)
end

function second_assignment(path::String)
	execute(path, 14)
end
end
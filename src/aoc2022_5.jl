module aoc2022_5
export first_assignment, second_assignment

function read_stack!(stacks, line::String)
    if length(stacks) == 0
        stacks = Array{Any}(undef, length(2:4:length(line)))
    end
    for (index, x) in enumerate(2:4:length(line))
        if line[x] != ' '
            if isassigned(stacks, index)
                stacks[index] *= line[x]
            else
                stacks[index] = string(line[x])
            end
        end
    end
    stacks
end

function interpret_step!(stacks, line::String, mode)
    res = match(r"move (\d+) from (\d+) to (\d+)", line)
    number = parse(Int, res[1])
    from = parse(Int, res[2])
    to = parse(Int, res[3])
    tmp = mode(last(stacks[from], number))
    stacks[from] = stacks[from][1:(length(stacks[from])-number)] # remove last 
    stacks[to] *= tmp
    stacks
end

function reverse_stacks(stacks)
    [reverse(x) for x in stacks]
end

function get_result(stacks)
    String(map(x -> x[end], stacks))
end

function execute(path::String, mode)
    lines = readlines(path)
    stacks = []
    for line in lines
        if line != "" && line[1:4] == "move"
            interpret_step!(stacks, line, mode)
        elseif line == ""
            stacks = reverse_stacks(stacks)
        elseif line != "" && !isdigit(line[2])
            stacks = read_stack!(stacks, line)
        end
    end
    get_result(stacks)
end

function first_assignment(path::String)
    execute(path, reverse)
end

function second_assignment(path::String)
    execute(path, identity)
end

end
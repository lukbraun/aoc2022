module aoc2022

using .aoc2022_1
using .aoc2022_2
using .aoc2022_3
using .aoc2022_4
using .aoc2022_5

export get_input_to_path

function get_input_to_path(day)
    "../input/input_$day"
end

function print_res(res1, res2)
    println("First assignment:")
    println(res1)
    println("==================")
    println("Second assignment:")
    println(res2)
    println("==================")
end

function exec(day, first_assignment, second_assignment)
    input = get_input_to_path(day)
    f = first_assignment(input)
    s = second_assignment(input)
    print_res(f, s)
end

function day1()
    exec(1, aoc2022_1.first_assignment, aoc2022_1.second_assignment)
end

function day2()
    exec(2, aoc2022_2.first_assignment, aoc2022_2.second_assignment)
end

function day3()
    exec(3, aoc2022_3.first_assignment, aoc2022_3.second_assignment)
end

function day4()
    exec(4, aoc2022_4.first_assignment, aoc2022_4.second_assignment)
end

function day5()
    exec(5, aoc2022_5.first_assignment, aoc2022_5.second_assignment)
end

end # module aoc2022

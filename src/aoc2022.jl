module aoc2022

using .aoc2022_1
using .aoc2022_2
using .aoc2022_3

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

function day1()
	input = get_input_to_path(1)
	f = aoc2022_1.first_assignment(input)
	s = aoc2022_1.second_assignment(input)
	print_res(f, s)
end

function day2() 
	input = get_input_to_path(2)
	f = aoc2022_2.first_assignment(input)
	s = aoc2022_2.second_assignment(input)
	print_res(f, s)
end

function day3() 
	input = get_input_to_path(3)
	f = aoc2022_3.first_assignment(input)
	s = aoc2022_3.second_assignment(input)
	print_res(f, s)
end



end # module aoc2022

include("../src/aoc2022_6.jl")
using Test


@testset "day 6" begin
	@testset "utilities" begin
		@test aoc2022_6.different("asdf", 4)
		@test !aoc2022_6.different("asda", 4)
	end

	@testset "test input" begin
		@test 7 == aoc2022_6.check_string("mjqjpqmgbljsphdztnvjfqwrcgsmlb", 4)
		@test 5 == aoc2022_6.check_string("bvwbjplbgvbhsrlpgdmjqwftvncz", 4)
		@test 6 == aoc2022_6.check_string("nppdvjthqldpwncqszvftbrmjlhg", 4)
		@test 10 == aoc2022_6.check_string("nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg", 4)
		@test 11 == aoc2022_6.check_string("zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw", 4)

		@test 19 == aoc2022_6.check_string("mjqjpqmgbljsphdztnvjfqwrcgsmlb", 14)
		@test 23 == aoc2022_6.check_string("bvwbjplbgvbhsrlpgdmjqwftvncz", 14)
		@test 23 == aoc2022_6.check_string("nppdvjthqldpwncqszvftbrmjlhg", 14)
		@test 29 == aoc2022_6.check_string("nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg", 14)
		@test 26 == aoc2022_6.check_string("zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw", 14)
	end
end
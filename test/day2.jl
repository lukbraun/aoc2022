using ..aoc2022_2
using Test

@testset "check from page" begin
	input = ["A Y", "B X", "C Z"]
	results = [8, 1, 6]
	scores_res = 15
	score = 0
	for i in 1:3
		@test results[i] == aoc2022_2.process_line_1(input[i])
		score += results[i]
	end
	@test score == scores_res
end

@testset "check from page 2" begin
	input = ["A Y", "B X", "C Z"]
	results = [4, 1, 7]
	scores_res = 12
	score = 0
	for i in 1:3
		@test results[i] == aoc2022_2.process_line_2(input[i])
		score += results[i]
	end
	@test score == scores_res
end
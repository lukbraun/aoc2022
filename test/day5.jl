include("../src/aoc2022_5.jl")
using Test

@testset "day 5" begin
	@testset "read stacks" begin
		lines = """
[W]     [G]     [P]
[V] [H] [B]     [H]
[B] [Q] [D]     [T]
[H] [M] [N] [Z] [M]
 1   2   3   4   5 
		"""
		stacks = []
		stacks_res = ["WVBH1", "HQM2", "GBDN3", "Z4", "PHTM5"]
		for line in split(lines, "\n")
			stacks = aoc2022_5.read_stack!(stacks, string(line))
		end
		@test stacks == stacks_res
	end

	@testset "reverse stacks" begin
		stacks = ["WVBH1", "HQM2", "GBDN3", "Z4", "PHTM5"]
		stacks_res = ["1HBVW", "2MQH", "3NDBG", "4Z", "5MTHP"]
		@test stacks_res == aoc2022_5.reverse_stacks(stacks)
	end

	@testset "interpret steps" begin
		
	end

	@testset "get result" begin
		stacks = ["1HBVW", "2MQH", "3NDBG", "4Z", "5MTHP"]
		stacks_res = "WHGZP"
		@test stacks_res == aoc2022_5.get_result(stacks)
	end

end
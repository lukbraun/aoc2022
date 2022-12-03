using ..aoc2022_3
using Test

test_input = ["vJrwpWtwJgWrhcsFMMfFFhFp",
    "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL",
    "PmmdzqPrVvPwwTWBwg",
    "wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn",
    "ttgJtRGJQctTZtZT",
    "CrZsJsPPZsGzwwsLwLmpwMDw"]

test_input_res = [
    'p',
    'L',
    'P',
    'v',
    't',
    's'
]

test_input_prio = [
    16,
    38,
    42,
    22,
    20,
    19
]

@testset "used functions" begin
    @test "ab" == aoc2022_3.get_first_part("abba")
    @test "ba" == aoc2022_3.get_second_part("abba")
    for i in 1:length(test_input)
    	r = aoc2022_3.find_in_both(test_input[i])
    	@test test_input_res[i] == r
    	@test test_input_prio[i] == aoc2022_3.calculate_priority(r)
    end
    @test 'r' == aoc2022_3.find_common_badge(test_input[1], test_input[2], test_input[3])
    @test 'Z' == aoc2022_3.find_common_badge(test_input[4], test_input[5], test_input[6])    
end
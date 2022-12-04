include("../src/aoc2022_4.jl")
using Test

input_test = [
    "2-4,6-8",
    "2-3,4-5",
    "5-7,7-9",
    "2-8,3-7",
    "6-6,4-6",
    "2-6,4-8"
]

@testset "day 4" begin
    @testset "utilities" begin
        @test false == aoc2022_4.overlaps_fully(1, 3, 4, 6)
        @test false == aoc2022_4.overlaps_fully(4, 6, 1, 3)
        @test false == aoc2022_4.overlaps_fully(1, 3, 2, 4)
        @test false == aoc2022_4.overlaps_fully(2, 4, 1, 3)
        @test true == aoc2022_4.overlaps_fully(1, 4, 1, 4)
        @test true == aoc2022_4.overlaps_fully(1, 5, 2, 4)
        @test true == aoc2022_4.overlaps_fully(2, 4, 1, 5)
        @test true == aoc2022_4.overlaps_fully(4, 6, 6, 6)

        @test false == aoc2022_4.overlaps_partly(1, 3, 4, 6)
        @test false == aoc2022_4.overlaps_partly(4, 6, 1, 3)
        @test true == aoc2022_4.overlaps_partly(1, 3, 2, 4)
        @test true == aoc2022_4.overlaps_partly(2, 4, 1, 3)
        @test true == aoc2022_4.overlaps_partly(1, 4, 1, 4)
        @test true == aoc2022_4.overlaps_partly(1, 5, 2, 4)
        @test true == aoc2022_4.overlaps_partly(2, 4, 1, 5)
        @test true == aoc2022_4.overlaps_partly(4, 6, 6, 6)
        @test true == aoc2022_4.overlaps_partly(5, 7, 7, 9)
    end

    @testset "testinput first assignment" begin
        res = 0
        res_target = 2
        for line in input_test
            if aoc2022_4.handle_line(line, aoc2022_4.overlaps_fully)
                res += 1
            end
        end
        @test res_target == res
    end

    @testset "testinput second assignment" begin
        res = 0
        res_target = 4
        for line in input_test
            if aoc2022_4.handle_line(line, aoc2022_4.overlaps_partly)
                res += 1
            end
        end
        @test res_target == res
    end
end
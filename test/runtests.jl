using FinancePlus
using Test

@testset "FinancePlus.jl" begin
    # Write your tests here.
    @test FinancePlus.future_value(100.00 , 0.1 ,2) == 121.00000000000001
end

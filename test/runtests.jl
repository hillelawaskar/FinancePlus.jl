using FinancePlus
using Test

@testset "FinancePlus.jl" begin
    # Write your tests here.
    @test FinancePlus.simple_interest(100.00 , 0.1 ,2) == 20.0
    compound_interest(100.00 , 0.1 ,2) == 21.000000000000014
    @test FinancePlus.future_value(100.00 , 0.1 ,2) == 121.00000000000001
    @test FinancePlus.present_value(121.00000000000001 , 0.1 ,2) == 100.00
    @test FinancePlus.future_value(100.00 , 0.1 ,2, 1) == 121.00000000000001
    @test FinancePlus.future_value(100.00 , 0.1 ,2, 2) == 121.55062500000003
    @test FinancePlus.present_value(121.00000000000001 , 0.1 ,2, 2) == 99.54699944981772
    @test FinancePlus.present_value(121.00000000000001 , 0.1 ,2, 1) == 100.00
    @test FinancePlus.annuity(100.00 , 0.1 ,10) == 385.5432894295314
end

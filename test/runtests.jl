using FinancePlus
using Test

@testset "FinancePlus.jl" begin
    # Write your tests here.
    @test FinancePlus.simple_interest(100.00 , 0.1 ,2) == 20.0
    @test FinancePlus.compound_interest(100.00 , 0.1 ,2) == 21.000000000000014
    @test FinancePlus.future_value(100.00 , 0.1 ,2) == 121.00000000000001
    @test FinancePlus.present_value(121.00000000000001 , 0.1 ,2) == 100.00
    @test FinancePlus.future_value(100.00 , 0.1 ,2, 1) == 121.00000000000001
    @test FinancePlus.future_value(100.00 , 0.1 ,2, 2) == 121.55062500000003
    @test FinancePlus.present_value(121.00000000000001 , 0.1 ,2, 2) == 99.54699944981772
    @test FinancePlus.present_value(121.00000000000001 , 0.1 ,2, 1) == 100.00
    @test FinancePlus.present_annuity(50000.00 , 0.06 ,25) == 639167.8079134206
    @test FinancePlus.present_annuity_due(50000.00 , 0.06 ,25) == 677517.8763882258
    @test FinancePlus.present_value_interest_factor(0.05 ,5) == 0.7835261664684589
    @test FinancePlus.future_value_interest_factor(0.05 ,5) == 1.2762815625000004
    

end

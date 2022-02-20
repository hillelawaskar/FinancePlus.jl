module FinancePlus

export simple_interest,compound_interest,future_value,present_value,present_annuity,present_annuity_due,present_value_interest_factor,future_value_interest_factor
# Write your package code here.
include("TimeValue.jl")



si = simple_interest(100.00 , 0.1 ,2)
println(si)

ci = compound_interest(100.00 , 0.1 ,2)
println(ci)



ann1 = present_annuity(50000.00 , 0.06 ,25)
println(ann1)

ann2 = present_annuity_due(50000.00 , 0.06 ,25)
println(ann2)

PVIF= present_value_interest_factor(0.05 ,5)
println(PVIF)


FVIF = future_value_interest_factor(0.05 ,5)
println(FVIF)
end

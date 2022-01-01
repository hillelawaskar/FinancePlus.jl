module FinancePlus

export future_value, present_value
# Write your package code here.
include("TimeValue.jl")



si = simple_interest(100.00 , 0.1 ,2)
println(si)

ci = compound_interest(100.00 , 0.1 ,2)
println(ci)

ann = annuity(100.00 , 0.1 ,10)
println(ann)


end

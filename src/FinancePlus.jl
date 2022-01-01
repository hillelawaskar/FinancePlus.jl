module FinancePlus

export future_value, present_value
# Write your package code here.
include("TimeValue.jl")



pv = present_value(121.00 , 0.1 ,2)
println(pv)

end

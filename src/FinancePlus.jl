module FinancePlus

export future_value
# Write your package code here.
include("TimeValue.jl")



fv = future_value(100 , 10 ,2)
println(fv)

end

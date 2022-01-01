"""
    future_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
Future Value of Money.
returns a AbstractFloat
# Example
```
julia> future_value(100.00 , 0.1 ,2)
=121.00000000000001
```
"""
function future_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
    return present_value * (1 + interest_rate)^number_period
end

"""
    present_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
Future Value of Money.
returns a AbstractFloat
# Example
```
julia> future_value(100.00 , 0.1 ,2)
=121.00000000000001
```
"""
function present_value(future_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
    return future_value * (1 + interest_rate)^-number_period
end

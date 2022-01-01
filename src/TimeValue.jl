"""
    get_proportion(for_prop_arr::AbstractVector{Float64})::AbstractVector{Float64}
Compute the proportional values for each element in the 1D array.
returns a AbstractVector{Float64}
# Example
```
julia> get_proportion([1.0,2.0,3.0,4.0,5.0,34.0000034,2423,5656.98988])
=[0.00012301651427098885, 0.0002460330285419777, 0.00036904954281296654, 0.0004920660570839554, 0.0006150825713549442, 0.004182561903469769, 0.298069014078606, 0.6959031763038594]
```
"""
function future_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
    return present_value * (1 + interest_rate)^number_period
end

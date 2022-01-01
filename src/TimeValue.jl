"""
    simple_interest(principal::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
Simple Interest.
Simple Interest = principal × interest_rate × number_period
returns a AbstractFloat
# Example
```
julia> simple_interest(100.00 , 0.1 ,2)
=20.0
```
"""
function simple_interest(principal::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
    return principal *  interest_rate * number_period
end

"""
    compound_interest(principal::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
Compound Interest.
Compound Interest = (principal × (1+ interest_rate)^ number_period) - principal
returns a AbstractFloat
# Example
```
julia> compound_interest(100.00 , 0.1 ,2)
=20.0
```
"""
function compound_interest(principal::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
    return future_value(principal,interest_rate,number_period,1) - principal
end





"""
    future_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
Future Value of Money.
future_value = present_value * (1 + interest_rate)^number_period
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
Present Value of Money.
present_value = future_value * (1 + interest_rate)^-number_period
returns a AbstractFloat
# Example
```
julia> present_value(121.00000000000001 , 0.1 ,2)
=100.00
```
"""
function present_value(future_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64 )::AbstractFloat
    return future_value * (1 + interest_rate)^-number_period
end
"""
    future_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64,compound_period::Int64 )::AbstractFloat
Future Value of Money with compounting period.
future_value = present_value * (1 + interest_rate / compound_period)^(number_period * compound_period)
returns a AbstractFloat
# Example
```
julia> future_value(100.00 , 0.1 ,2, 2)
=121.55062500000003
```
"""
function future_value(present_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64,compound_period::Int64 )::AbstractFloat
    return present_value * (1 + interest_rate / compound_period)^(number_period * compound_period)
end

"""
    present_value(future_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64, compound_period::Int64)::AbstractFloat
Present Value of Money with compounting period.
present_value = present_value * (1 + interest_rate / compound_period)^(number_period * compound_period)
returns a AbstractFloat
# Example
```
julia> present_value(121.00000000000001 , 0.1 ,2)
=100.00
```
"""
function present_value(future_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64, compound_period::Int64)::AbstractFloat
    return future_value * (1 + interest_rate / compound_period)^-(number_period * compound_period)
end







"""
    annuity(future_value::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64, compound_period::Int64)::AbstractFloat
An annuity is a series of payments made at equal intervals.
Examples of annuities are regular deposits to a savings account,
monthly home mortgage payments, etc. Annuities can be classified by
the frequency of payment dates. The payments (deposits) may be made
weekly, monthly, quarterly, yearly, or at any other regular interval of time.
returns a AbstractFloat
# Example
```
julia> annuity(100 , 0.1 ,10)
=100.00
```
"""
function annuity(cash_flow::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64)::AbstractFloat
    annuity_ = 0.00
    for i in (1:number_period)
        annuity_ = annuity_ + (cash_flow / (1+ interest_rate)^number_period )
    end
    return annuity_
end

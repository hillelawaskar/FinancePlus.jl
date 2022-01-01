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
    present_annuity(cash_flow_each_pay::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64)::AbstractFloat
An annuity is a series of payments made at equal intervals.
Examples of annuities are regular deposits to a savings account,
monthly home mortgage payments, etc.
returns a AbstractFloat
# Example
```
julia> present_annuity(50000.00 , 0.06 ,25)
=639167.8079134206
```
"""
function present_annuity(cash_flow_each_pay::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64)::AbstractFloat
    return cash_flow_each_pay * (1-(1/(1+interest_rate)^number_period))/interest_rate

end

"""
    present_annuity_due(cash_flow_each_pay::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64)::AbstractFloat
Annuity due: in which payments are made at the beginning of each period.
returns a AbstractFloat
# Example
```
julia> present_annuity_due(50000.00 , 0.06 ,25)
=677517.8763882258
```
"""
function present_annuity_due(cash_flow_each_pay::AbstractFloat, interest_rate::AbstractFloat, number_period::Int64)::AbstractFloat
    return cash_flow_each_pay * ((1-(1/(1+interest_rate)^number_period))/interest_rate)* (1 + interest_rate)
end

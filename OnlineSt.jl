import Pkg
Pkg.add("OnlineStats")

using OnlineStats

#create statistics

o = Series(Mean(), Variance(), Extrema())

#update with a single point
fit!(o,1.0)

fit!(o, randn(10^6))

#get values
value(o)
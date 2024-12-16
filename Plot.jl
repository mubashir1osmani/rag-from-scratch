using VegaDatasets # v2.1.0
using DataVoyager # v1.0.0
using VegaLite # v2.3.0

data = dataset("cars")

vscodedisplay(data)

# this displays data on seperate plots
v = Voyager(data)

# supply and demand curves

Q(P) = 3P-6

P=5
Q(P)

P=10
Q(P)

P_supply(Q) = (Q + 6) / 3
P_demand(Q) = (-Q + 32) / 2

# use cairo makie
using CairoMakie

scene, layout = layoutscene(resolution = (325, 325))
scene

ax = layout[1,1] = Axis(scene,
    xlabel= "quantity", xlabelsize = 10, xticklabelsize=9, xticksize=3,
    ylabel="price", ylabelsize=10, yticklabelsize=9, yticksize=3,
    ytickformat= "\${:d}",
    title = "Supply and demand", titlesize=12
)

scene


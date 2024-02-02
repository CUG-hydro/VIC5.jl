module VIC5

using Reexport


include("VIC5_LIB/VIC5_LIB.jl")
@reexport using .VIC5_LIB


end # module VIC5

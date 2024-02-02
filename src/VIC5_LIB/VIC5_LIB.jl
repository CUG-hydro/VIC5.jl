module VIC5_LIB

# using VIC5_jll
# export VIC5_jll
using CEnum

path_proj(f...) = normpath(joinpath(@__DIR__, "../..", f...))
libvic5 = path_proj("deps/win/libvic5_classic.dll")

include("vic_driver_classic.jl")


# exports
const PREFIXES = ["CX", "clang_"]
for name in names(@__MODULE__; all=true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end


end

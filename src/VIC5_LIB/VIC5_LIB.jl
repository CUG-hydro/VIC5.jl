module VIC5_LIB
# export VIC5_jll

using VIC5_jll
using CEnum
using UnsafePointers
using Parameters

const libvic5 = VIC5_jll.libvic5_classic
# path_proj(f...) = normpath(joinpath(@__DIR__, "../..", f...))
# libvic5 = path_proj("deps/win/libvic5_classic.dll")

include("Constant.jl")
include("Cenum.jl")
include("DataType.jl")
include("system.jl")

include("Global.jl")
include("Initialize.jl")

include("vic_driver_classic.jl")


# exports
for name in names(@__MODULE__; all=true)
  # if startswith(string(name), prefix)
  if !(string(name) in ["#eval", "#include", "eval", "include"])
    @eval export $name
  end
  # end
end



end

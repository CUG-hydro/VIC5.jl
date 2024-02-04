module VIC5

using Reexport
@reexport using UnsafePointers

include("VIC5_LIB/VIC5_LIB.jl")
@reexport using .VIC5_LIB

function __init__()
  # println("MyModule has been loaded.")
  initialize_log()
  # /** Read Model Options **/
  # cmd_proc(argc, argv, filenames.global);
  # // Initialize global structures
  initialize_options()
  initialize_global()
  initialize_parameters()
  initialize_filenames()
end

end # module VIC5

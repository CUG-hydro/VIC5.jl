get_options() = cglobal((:options, libvic5), option_struct) |> UnsafePtr
get_param() = cglobal((:param, libvic5), parameters_struct) |> UnsafePtr
get_global_param() = cglobal((:global_param, libvic5), global_param_struct) |> UnsafePtr


get_param_set() = cglobal((:param_set, libvic5), param_set_struct) |> UnsafePtr
get_filenames() = cglobal((:filenames, libvic5), filenames_struct) |> UnsafePtr


Base.show(io::IO, x::UnsafePtr{option_struct}) = print_option(x)
Base.show(io::IO, x::UnsafePtr{parameters_struct}) = print_parameters(x)
Base.show(io::IO, x::UnsafePtr{global_param_struct}) = print_global_param(x)
Base.show(io::IO, x::UnsafePtr{param_set_struct}) = print_param_set(x)
# Base.show(io::IO, x::UnsafePtr{filenames_struct}) = print_option(x)



function print_option(option::option_struct)
  @ccall libvic5.print_option(Ref(option)::Ptr{option_struct})::Cvoid
end

function print_option(option)
  @ccall libvic5.print_option(option::Ptr{option_struct})::Cvoid
end


function print_parameters(param)
  @ccall libvic5.print_parameters(param::Ptr{parameters_struct})::Cvoid
end


function print_global_param(gp)
  @ccall libvic5.print_global_param(gp::Ptr{global_param_struct})::Cvoid
end


function print_param_set(param_set)
  @ccall libvic5.print_param_set(param_set::Ptr{param_set_struct})::Cvoid
end


function print_version(v="Julia")
  @ccall libvic5.print_version(v::Cstring)::Cvoid
end

options = get_options()
param = get_param()
param_set = get_param_set()
global_param = get_global_param()
filenames = get_filenames()


export options, param, global_param, param_set

# global_param_struct global_param;
# option_struct       options;
# parameters_struct   param;
# param_set_struct    param_set;
# metadata_struct     out_metadata[N_OUTVAR_TYPES];

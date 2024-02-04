function get_parameters(paramfile)
  @ccall libvic5.get_parameters(paramfile::Ptr{Libc.FILE})::Cvoid
end

function initialize_global()
  @ccall libvic5.initialize_global()::Cvoid
end

function initialize_options()
  @ccall libvic5.initialize_options()::Cvoid
end

function initialize_parameters()
  @ccall libvic5.initialize_parameters()::Cvoid
end


function initialize_log()
  @ccall libvic5.initialize_log()::Cvoid
end

function init_output_list(out_data, write::Cint, format, type::Cint, mult::Cdouble)
  @ccall libvic5.init_output_list(out_data::Ptr{Ptr{Cdouble}}, write::Cint, format::Cstring, type::Cint, mult::Cdouble)::Cvoid
end

function initialize_energy(energy, nveg::Csize_t)
  @ccall libvic5.initialize_energy(energy::Ptr{Ptr{energy_bal_struct}}, nveg::Csize_t)::Cvoid
end

function initialize_save_data(all_vars, force, soil_con, veg_con, veg_lib, lake_con, out_data, save_data, timer)
  @ccall libvic5.initialize_save_data(all_vars::Ptr{all_vars_struct}, force::Ptr{force_data_struct}, soil_con::Ptr{soil_con_struct}, veg_con::Ptr{veg_con_struct}, veg_lib::Ptr{veg_lib_struct}, lake_con::Ptr{lake_con_struct}, out_data::Ptr{Ptr{Cdouble}}, save_data::Ptr{save_data_struct}, timer::Ptr{timer_struct})::Cvoid
end

function initialize_snow(snow, veg_num::Csize_t)
  @ccall libvic5.initialize_snow(snow::Ptr{Ptr{snow_data_struct}}, veg_num::Csize_t)::Cvoid
end

function initialize_soil(cell, veg_num::Csize_t)
  @ccall libvic5.initialize_soil(cell::Ptr{Ptr{cell_data_struct}}, veg_num::Csize_t)::Cvoid
end

function initialize_time()
  @ccall libvic5.initialize_time()::Cvoid
end

function initialize_veg(veg_var, nveg::Csize_t)
  @ccall libvic5.initialize_veg(veg_var::Ptr{Ptr{veg_var_struct}}, nveg::Csize_t)::Cvoid
end

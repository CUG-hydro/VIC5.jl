function advect_carbon_storage(arg1::Cdouble, arg2::Cdouble, arg3, arg4)
  @ccall libvic5.advect_carbon_storage(arg1::Cdouble, arg2::Cdouble, arg3::Ptr{lake_var_struct}, arg4::Ptr{cell_data_struct})::Cvoid
end

function advect_snow_storage(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4)
  @ccall libvic5.advect_snow_storage(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Ptr{snow_data_struct})::Cvoid
end

function advect_soil_veg_storage(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4, arg5, arg6, arg7, arg8, arg9::lake_con_struct)
  @ccall libvic5.advect_soil_veg_storage(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Ptr{Cdouble}, arg5::Ptr{soil_con_struct}, arg6::Ptr{veg_con_struct}, arg7::Ptr{cell_data_struct}, arg8::Ptr{veg_var_struct}, arg9::lake_con_struct)::Cvoid
end

function advected_sensible_heat(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.advected_sensible_heat(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cdouble
end

function alblake(arg1::Cdouble, arg2::Cdouble, arg3, arg4, arg5, arg6, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10, arg11::Cdouble, arg12, arg13::Cushort, arg14::Cdouble)
  @ccall libvic5.alblake(arg1::Cdouble, arg2::Cdouble, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Ptr{Cuint}, arg11::Cdouble, arg12::Ptr{Bool}, arg13::Cushort, arg14::Cdouble)::Cvoid
end

function arno_evap(arg1, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11)
  @ccall libvic5.arno_evap(arg1::Ptr{layer_data_struct}, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Ptr{Cdouble})::Cdouble
end




function calc_atmos_energy_bal(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21)
  @ccall libvic5.calc_atmos_energy_bal(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Ptr{Cdouble}, arg20::Ptr{Bool}, arg21::Ptr{Cuint})::Cdouble
end

function calc_density(arg1::Cdouble)
  @ccall libvic5.calc_density(arg1::Cdouble)::Cdouble
end

function calc_gridcell_avg_albedo(arg1, arg2::Cdouble, arg3::Csize_t, arg4::Bool, arg5, arg6, arg7, arg8)
  @ccall libvic5.calc_gridcell_avg_albedo(arg1::Ptr{Cdouble}, arg2::Cdouble, arg3::Csize_t, arg4::Bool, arg5::Ptr{Ptr{energy_bal_struct}}, arg6::Ptr{Ptr{snow_data_struct}}, arg7::Ptr{veg_con_struct}, arg8::Ptr{soil_con_struct})::Cvoid
end

function calc_latent_heat_of_sublimation(temp::Cdouble)
  @ccall libvic5.calc_latent_heat_of_sublimation(temp::Cdouble)::Cdouble
end

function calc_latent_heat_of_vaporization(temp::Cdouble)
  @ccall libvic5.calc_latent_heat_of_vaporization(temp::Cdouble)::Cdouble
end

function calc_layer_average_thermal_props(arg1, arg2, arg3, arg4::Csize_t, arg5)
  @ccall libvic5.calc_layer_average_thermal_props(arg1::Ptr{energy_bal_struct}, arg2::Ptr{layer_data_struct}, arg3::Ptr{soil_con_struct}, arg4::Csize_t, arg5::Ptr{Cdouble})::Cint
end

function calc_outgoing_longwave(temp::Cdouble, emis::Cdouble)
  @ccall libvic5.calc_outgoing_longwave(temp::Cdouble, emis::Cdouble)::Cdouble
end

function calc_scale_height(tair::Cdouble, elevation::Cdouble)
  @ccall libvic5.calc_scale_height(tair::Cdouble, elevation::Cdouble)::Cdouble
end

function calc_sensible_heat(atmos_density::Cdouble, t1::Cdouble, t0::Cdouble, Ra::Cdouble)
  @ccall libvic5.calc_sensible_heat(atmos_density::Cdouble, t1::Cdouble, t0::Cdouble, Ra::Cdouble)::Cdouble
end

function calc_Nscale_factors(arg1::Bool, arg2, arg3::Cdouble, arg4::Cdouble, arg5)
  @ccall libvic5.calc_Nscale_factors(arg1::Bool, arg2::Ptr{Cdouble}, arg3::Cdouble, arg4::Cdouble, arg5::Ptr{Cdouble})::Cvoid
end

function calc_rainonly(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
  @ccall libvic5.calc_rainonly(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)::Cdouble
end

function calc_rc(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cchar)
  @ccall libvic5.calc_rc(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cchar)::Cdouble
end

function calc_rc_ps(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5, arg6::Cdouble, arg7::Cdouble, arg8, arg9::Cdouble, arg10::Cdouble, arg11, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15, arg16)
  @ccall libvic5.calc_rc_ps(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Cdouble, arg7::Cdouble, arg8::Ptr{Cdouble}, arg9::Cdouble, arg10::Cdouble, arg11::Ptr{Cdouble}, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble})::Cvoid
end

function calc_snow_coverage(arg1, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9, arg10::Cdouble, arg11, arg12, arg13)
  @ccall libvic5.calc_snow_coverage(arg1::Ptr{Bool}, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Ptr{Cdouble}, arg10::Cdouble, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble})::Cdouble
end

function calc_soil_thermal_fluxes(arg1::Cint, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17::Cint, arg18::Cint, arg19::Cint)
  @ccall libvic5.calc_soil_thermal_fluxes(arg1::Cint, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Cstring, arg5::Ptr{Cuint}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Cint, arg18::Cint, arg19::Cint)::Cint
end

function calc_surf_energy_bal(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Cdouble, arg21::Cdouble, arg22::Cdouble, arg23::Cdouble, arg24, arg25, arg26, arg27, arg28, arg29, arg30::Cdouble, arg31, arg32, arg33::Cdouble, arg34, arg35, arg36::Cint, arg37::Cint, arg38::Csize_t, arg39::Csize_t, arg40::Cdouble, arg41::Csize_t, arg42::Cushort, arg43::Cint, arg44::Cushort, arg45, arg46, arg47, arg48, arg49, arg50, arg51, arg52, arg53)
  @ccall libvic5.calc_surf_energy_bal(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Cdouble, arg21::Cdouble, arg22::Cdouble, arg23::Cdouble, arg24::Ptr{Cdouble}, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Cdouble}, arg29::Ptr{Cdouble}, arg30::Cdouble, arg31::Ptr{Cdouble}, arg32::Ptr{Cdouble}, arg33::Cdouble, arg34::Ptr{Cdouble}, arg35::Ptr{Cdouble}, arg36::Cint, arg37::Cint, arg38::Csize_t, arg39::Csize_t, arg40::Cdouble, arg41::Csize_t, arg42::Cushort, arg43::Cint, arg44::Cushort, arg45::Ptr{Cdouble}, arg46::Ptr{Cdouble}, arg47::Ptr{force_data_struct}, arg48::Ptr{dmy_struct}, arg49::Ptr{energy_bal_struct}, arg50::Ptr{layer_data_struct}, arg51::Ptr{snow_data_struct}, arg52::Ptr{soil_con_struct}, arg53::Ptr{veg_var_struct})::Cdouble
end

function calc_veg_displacement(arg1::Cdouble)
  @ccall libvic5.calc_veg_displacement(arg1::Cdouble)::Cdouble
end

function calc_veg_height(arg1::Cdouble)
  @ccall libvic5.calc_veg_height(arg1::Cdouble)::Cdouble
end

function calc_veg_roughness(arg1::Cdouble)
  @ccall libvic5.calc_veg_roughness(arg1::Cdouble)::Cdouble
end

function CalcAerodynamic(arg1::Bool, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7, arg8, arg9, arg10, arg11)
  @ccall libvic5.CalcAerodynamic(arg1::Bool, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble})::Cint
end

function CalcBlowingSnow(arg1::Cdouble, arg2::Cdouble, arg3::Cuint, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cint, arg16::Cint, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20)
  @ccall libvic5.CalcBlowingSnow(arg1::Cdouble, arg2::Cdouble, arg3::Cuint, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cint, arg16::Cint, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Ptr{Cdouble})::Cdouble
end

function CalcSubFlux(EactAir::Cdouble, es::Cdouble, Zrh::Cdouble, AirDens::Cdouble, utshear::Cdouble, ushear::Cdouble, fe::Cdouble, Tsnow::Cdouble, Tair::Cdouble, U10::Cdouble, Zo_salt::Cdouble, F::Cdouble, Transport)
  @ccall libvic5.CalcSubFlux(EactAir::Cdouble, es::Cdouble, Zrh::Cdouble, AirDens::Cdouble, utshear::Cdouble, ushear::Cdouble, fe::Cdouble, Tsnow::Cdouble, Tair::Cdouble, U10::Cdouble, Zo_salt::Cdouble, F::Cdouble, Transport::Ptr{Cdouble})::Cdouble
end

function canopy_assimilation(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5, arg6::Cdouble, arg7::Cdouble, arg8, arg9::Cdouble, arg10::Cdouble, arg11, arg12::Cdouble, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23)
  @ccall libvic5.canopy_assimilation(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Cdouble, arg7::Cdouble, arg8::Ptr{Cdouble}, arg9::Cdouble, arg10::Cdouble, arg11::Ptr{Cdouble}, arg12::Cdouble, arg13::Cstring, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Ptr{Cdouble}, arg20::Ptr{Cdouble}, arg21::Ptr{Cdouble}, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble})::Cvoid
end

function canopy_evap(arg1, arg2, arg3::Bool, arg4::Cushort, arg5, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14, arg15, arg16, arg17, arg18, arg19, arg20::Cdouble, arg21::Cdouble, arg22)
  @ccall libvic5.canopy_evap(arg1::Ptr{layer_data_struct}, arg2::Ptr{veg_var_struct}, arg3::Bool, arg4::Cushort, arg5::Ptr{Cdouble}, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Ptr{Cdouble}, arg20::Cdouble, arg21::Cdouble, arg22::Ptr{Cdouble})::Cdouble
end

function colavg(arg1, arg2, arg3, arg4::Cdouble, arg5, arg6::Cint, arg7::Cdouble, arg8::Cdouble)
  @ccall libvic5.colavg(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Cint, arg7::Cdouble, arg8::Cdouble)::Cvoid
end

function compute_coszen(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cushort, arg5::Cuint)
  @ccall libvic5.compute_coszen(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cushort, arg5::Cuint)::Cdouble
end

function compute_derived_lake_dimensions(arg1, arg2::lake_con_struct)
  @ccall libvic5.compute_derived_lake_dimensions(arg1::Ptr{lake_var_struct}, arg2::lake_con_struct)::Cvoid
end

function compute_pot_evap(arg1::Csize_t, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11, arg12::Cchar, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16)
  @ccall libvic5.compute_pot_evap(arg1::Csize_t, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Ptr{Cdouble}, arg12::Cchar, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Ptr{Cdouble})::Cvoid
end

function compute_runoff_and_asat(arg1, arg2, arg3::Cdouble, arg4, arg5)
  @ccall libvic5.compute_runoff_and_asat(arg1::Ptr{soil_con_struct}, arg2::Ptr{Cdouble}, arg3::Cdouble, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble})::Cvoid
end

function calc_Q12(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.calc_Q12(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cdouble
end

function compute_soil_resp(arg1::Cint, arg2, arg3::Cdouble, arg4::Cdouble, arg5, arg6, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10, arg11, arg12)
  @ccall libvic5.compute_soil_resp(arg1::Cint, arg2::Ptr{Cdouble}, arg3::Cdouble, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble})::Cvoid
end

function compute_soil_layer_thermal_properties(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10::Csize_t)
  @ccall libvic5.compute_soil_layer_thermal_properties(arg1::Ptr{layer_data_struct}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Csize_t)::Cvoid
end

function compute_zwt(arg1, arg2::Cint, arg3::Cdouble)
  @ccall libvic5.compute_zwt(arg1::Ptr{soil_con_struct}, arg2::Cint, arg3::Cdouble)::Cdouble
end

function correct_precip(arg1, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.correct_precip(arg1::Ptr{Cdouble}, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cvoid
end

function darkinhib(arg1::Cdouble)
  @ccall libvic5.darkinhib(arg1::Cdouble)::Cdouble
end

function distribute_node_moisture_properties(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18::Cint, arg19::Cint, arg20::Cchar)
  @ccall libvic5.distribute_node_moisture_properties(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Cint, arg19::Cint, arg20::Cchar)::Cint
end

function eddy(arg1::Cint, arg2::Cdouble, arg3, arg4, arg5::Cdouble, arg6::Cint, arg7::Cdouble, arg8::Cdouble)
  @ccall libvic5.eddy(arg1::Cint, arg2::Cdouble, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Cdouble, arg6::Cint, arg7::Cdouble, arg8::Cdouble)::Cvoid
end

function energycalc(arg1, arg2, arg3::Cint, arg4::Cdouble, arg5::Cdouble, arg6, arg7, arg8)
  @ccall libvic5.energycalc(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Cint, arg4::Cdouble, arg5::Cdouble, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble})::Cvoid
end

function estimate_frost_temperature_and_depth(arg1, arg2, arg3, arg4, arg5, arg6, arg7::Cdouble, arg8::Csize_t, arg9::Csize_t)
  @ccall libvic5.estimate_frost_temperature_and_depth(arg1::Ptr{Ptr{Ptr{Cdouble}}}, arg2::Ptr{Ptr{Cdouble}}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Cdouble, arg8::Csize_t, arg9::Csize_t)::Cvoid
end

function estimate_layer_ice_content(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9::Csize_t, arg10::Csize_t, arg11::Cchar)
  @ccall libvic5.estimate_layer_ice_content(arg1::Ptr{layer_data_struct}, arg2::Ptr{Ptr{Ptr{Cdouble}}}, arg3::Ptr{Ptr{Cdouble}}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Csize_t, arg10::Csize_t, arg11::Cchar)::Cint
end

function estimate_layer_temperature(arg1, arg2, arg3, arg4, arg5, arg6::Csize_t, arg7::Csize_t)
  @ccall libvic5.estimate_layer_temperature(arg1::Ptr{layer_data_struct}, arg2::Ptr{Ptr{Ptr{Cdouble}}}, arg3::Ptr{Ptr{Cdouble}}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Csize_t, arg7::Csize_t)::Cint
end

function estimate_layer_temperature_quick_flux(arg1, arg2, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble)
  @ccall libvic5.estimate_layer_temperature_quick_flux(arg1::Ptr{layer_data_struct}, arg2::Ptr{Cdouble}, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble)::Cint
end

function estimate_layer_ice_content_quick_flux(arg1, arg2, arg3, arg4, arg5, arg6, arg7::Cdouble, arg8::Cchar)
  @ccall libvic5.estimate_layer_ice_content_quick_flux(arg1::Ptr{layer_data_struct}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Cdouble, arg8::Cchar)::Cint
end

function estimate_T1(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble)
  @ccall libvic5.estimate_T1(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble)::Cdouble
end

function faparl(arg1, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6, arg7)
  @ccall libvic5.faparl(arg1::Ptr{Cdouble}, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble})::Cvoid
end

function fdjac3(arg1, arg2, arg3, arg4, arg5, vecfunc, arg7::Cint)
  @ccall libvic5.fdjac3(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, vecfunc::Ptr{Cvoid}, arg7::Cint)::Cvoid
end

function find_0_degree_fronts(arg1, arg2, arg3, arg4::Cint)
  @ccall libvic5.find_0_degree_fronts(arg1::Ptr{energy_bal_struct}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Cint)::Cvoid
end

function free_2d_double(shape, array)
  @ccall libvic5.free_2d_double(shape::Ptr{Csize_t}, array::Ptr{Ptr{Cdouble}})::Cvoid
end

function free_3d_double(shape, array)
  @ccall libvic5.free_3d_double(shape::Ptr{Csize_t}, array::Ptr{Ptr{Ptr{Cdouble}}})::Cvoid
end

function get_depth(arg1::lake_con_struct, arg2::Cdouble, arg3)
  @ccall libvic5.get_depth(arg1::lake_con_struct, arg2::Cdouble, arg3::Ptr{Cdouble})::Cint
end

function get_prob(Tair::Cdouble, Age::Cdouble, SurfaceLiquidWater::Cdouble, U10::Cdouble)
  @ccall libvic5.get_prob(Tair::Cdouble, Age::Cdouble, SurfaceLiquidWater::Cdouble, U10::Cdouble)::Cdouble
end

function get_sarea(arg1::lake_con_struct, arg2::Cdouble, arg3)
  @ccall libvic5.get_sarea(arg1::lake_con_struct, arg2::Cdouble, arg3::Ptr{Cdouble})::Cint
end

function get_shear(x::Cdouble, f, df, Ur::Cdouble, Zr::Cdouble)
  @ccall libvic5.get_shear(x::Cdouble, f::Ptr{Cdouble}, df::Ptr{Cdouble}, Ur::Cdouble, Zr::Cdouble)::Cvoid
end

function get_thresh(Tair::Cdouble, SurfaceLiquidWater::Cdouble, Zo_salt::Cdouble)
  @ccall libvic5.get_thresh(Tair::Cdouble, SurfaceLiquidWater::Cdouble, Zo_salt::Cdouble)::Cdouble
end

function get_volume(arg1::lake_con_struct, arg2::Cdouble, arg3)
  @ccall libvic5.get_volume(arg1::lake_con_struct, arg2::Cdouble, arg3::Ptr{Cdouble})::Cint
end

function hiTinhib(arg1::Cdouble)
  @ccall libvic5.hiTinhib(arg1::Cdouble)::Cdouble
end

function ice_melt(arg1::Cdouble, arg2::Cdouble, arg3, arg4::Cdouble, arg5, arg6, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Cdouble, arg21::Cdouble, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30)
  @ccall libvic5.ice_melt(arg1::Cdouble, arg2::Cdouble, arg3::Ptr{Cdouble}, arg4::Cdouble, arg5::Ptr{snow_data_struct}, arg6::Ptr{lake_var_struct}, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Cdouble, arg21::Cdouble, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble}, arg24::Ptr{Cdouble}, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Cdouble}, arg29::Ptr{Cdouble}, arg30::Ptr{Cdouble})::Cint
end

function iceform(arg1, arg2, arg3::Cdouble, arg4::Cdouble, arg5, arg6::Cint, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10, arg11, arg12, arg13, arg14::Cdouble)
  @ccall libvic5.iceform(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Cdouble, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Cint, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Cdouble)::Cvoid
end

function icerad(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4, arg5, arg6)
  @ccall libvic5.icerad(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble})::Cvoid
end

function initialize_lake(arg1, arg2::lake_con_struct, arg3, arg4, arg5::Bool)
  @ccall libvic5.initialize_lake(arg1::Ptr{lake_var_struct}, arg2::lake_con_struct, arg3::Ptr{soil_con_struct}, arg4::Ptr{cell_data_struct}, arg5::Bool)::Cvoid
end

function lakeice(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6, arg7::Cdouble, arg8, arg9, arg10::Cdouble, arg11::Cdouble)
  @ccall libvic5.lakeice(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Ptr{Cdouble}, arg7::Cdouble, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Cdouble, arg11::Cdouble)::Cint
end

function latent_heat_from_snow(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8, arg9, arg10, arg11, arg12)
  @ccall libvic5.latent_heat_from_snow(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble})::Cvoid
end

function latsens(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9, arg10, arg11::Cdouble)
  @ccall libvic5.latsens(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Cdouble)::Cvoid
end

function linear_interp(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.linear_interp(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cdouble
end

function lkdrag(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.lkdrag(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cdouble
end

function malloc_2d_double(shape, array)
  @ccall libvic5.malloc_2d_double(shape::Ptr{Csize_t}, array::Ptr{Ptr{Ptr{Cdouble}}})::Cvoid
end

function malloc_3d_double(shape, array)
  @ccall libvic5.malloc_3d_double(shape::Ptr{Csize_t}, array::Ptr{Ptr{Ptr{Ptr{Cdouble}}}})::Cvoid
end

function MassRelease(arg1, arg2, arg3, arg4)
  @ccall libvic5.MassRelease(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble})::Cvoid
end

function maximum_unfrozen_water(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
  @ccall libvic5.maximum_unfrozen_water(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)::Cdouble
end

function new_snow_density(arg1::Cdouble)
  @ccall libvic5.new_snow_density(arg1::Cdouble)::Cdouble
end

function newt_raph(vecfunc, arg2, arg3::Cint)
  @ccall libvic5.newt_raph(vecfunc::Ptr{Cvoid}, arg2::Ptr{Cdouble}, arg3::Cint)::Cint
end

function penman(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble)
  @ccall libvic5.penman(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble)::Cdouble
end

function photosynth(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11, arg12, arg13, arg14, arg15, arg16)
  @ccall libvic5.photosynth(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cstring, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble})::Cvoid
end

function polint(xa, ya, n::Cint, x::Cdouble, y, dy)
  @ccall libvic5.polint(xa::Ptr{Cdouble}, ya::Ptr{Cdouble}, n::Cint, x::Cdouble, y::Ptr{Cdouble}, dy::Ptr{Cdouble})::Cvoid
end

function prepare_full_energy(arg1, arg2, arg3, arg4, arg5)
  @ccall libvic5.prepare_full_energy(arg1::Ptr{cell_data_struct}, arg2::Ptr{energy_bal_struct}, arg3::Ptr{soil_con_struct}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble})::Cvoid
end

function qromb(sub_with_height_, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble, a::Cdouble, b::Cdouble)
  @ccall libvic5.qromb(sub_with_height_::Ptr{Cvoid}, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble, a::Cdouble, b::Cdouble)::Cdouble
end

function rescale_snow_energy_fluxes(arg1::Cdouble, arg2::Cdouble, arg3, arg4)
  @ccall libvic5.rescale_snow_energy_fluxes(arg1::Cdouble, arg2::Cdouble, arg3::Ptr{snow_data_struct}, arg4::Ptr{energy_bal_struct})::Cvoid
end

function rescale_snow_storage(arg1::Cdouble, arg2::Cdouble, arg3)
  @ccall libvic5.rescale_snow_storage(arg1::Cdouble, arg2::Cdouble, arg3::Ptr{snow_data_struct})::Cvoid
end

function rescale_soil_veg_fluxes(arg1::Cdouble, arg2::Cdouble, arg3, arg4)
  @ccall libvic5.rescale_soil_veg_fluxes(arg1::Cdouble, arg2::Cdouble, arg3::Ptr{cell_data_struct}, arg4::Ptr{veg_var_struct})::Cvoid
end

function rhoinit(arg1, arg2::Cdouble)
  @ccall libvic5.rhoinit(arg1::Ptr{Cdouble}, arg2::Cdouble)::Cvoid
end

function rtnewt(x1::Cdouble, x2::Cdouble, xacc::Cdouble, Ur::Cdouble, Zr::Cdouble)
  @ccall libvic5.rtnewt(x1::Cdouble, x2::Cdouble, xacc::Cdouble, Ur::Cdouble, Zr::Cdouble)::Cdouble
end

function runoff(arg1, arg2, arg3, arg4::Cdouble, arg5, arg6::Cint)
  @ccall libvic5.runoff(arg1::Ptr{cell_data_struct}, arg2::Ptr{energy_bal_struct}, arg3::Ptr{soil_con_struct}, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Cint)::Cint
end

function set_node_parameters(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12::Cint, arg13::Cint)
  @ccall libvic5.set_node_parameters(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Cint, arg13::Cint)::Cvoid
end

function shear_stress(U10::Cdouble, ZO::Cdouble, ushear, Zo_salt, utshear::Cdouble)
  @ccall libvic5.shear_stress(U10::Cdouble, ZO::Cdouble, ushear::Ptr{Cdouble}, Zo_salt::Ptr{Cdouble}, utshear::Cdouble)::Cvoid
end

function snow_albedo(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cint, arg8::Bool)
  @ccall libvic5.snow_albedo(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cint, arg8::Bool)::Cdouble
end

function snow_density(arg1, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.snow_density(arg1::Ptr{snow_data_struct}, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cdouble
end

function snow_intercept(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30, arg31, arg32, arg33, arg34, arg35, arg36, arg37::Cint, arg38::Cint, arg39::Cint, arg40::Cint, arg41::Cint, arg42::Cushort, arg43, arg44, arg45, arg46, arg47, arg48)
  @ccall libvic5.snow_intercept(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Ptr{Cdouble}, arg20::Ptr{Cdouble}, arg21::Ptr{Cdouble}, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble}, arg24::Ptr{Cdouble}, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Bool}, arg29::Ptr{Cuint}, arg30::Ptr{Cdouble}, arg31::Ptr{Cdouble}, arg32::Ptr{Cdouble}, arg33::Ptr{Cdouble}, arg34::Ptr{Cdouble}, arg35::Ptr{Cdouble}, arg36::Ptr{Cdouble}, arg37::Cint, arg38::Cint, arg39::Cint, arg40::Cint, arg41::Cint, arg42::Cushort, arg43::Ptr{Cdouble}, arg44::Ptr{Cdouble}, arg45::Ptr{force_data_struct}, arg46::Ptr{layer_data_struct}, arg47::Ptr{soil_con_struct}, arg48::Ptr{veg_var_struct})::Cint
end

function snow_melt(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5, arg6::Cdouble, arg7, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Cdouble, arg21, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30, arg31, arg32, arg33::Cint, arg34::Cint, arg35::Cint, arg36)
  @ccall libvic5.snow_melt(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Ptr{Cdouble}, arg6::Cdouble, arg7::Ptr{Cdouble}, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Cdouble, arg20::Cdouble, arg21::Ptr{Cdouble}, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble}, arg24::Ptr{Cdouble}, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Cdouble}, arg29::Ptr{Cdouble}, arg30::Ptr{Cdouble}, arg31::Ptr{Cdouble}, arg32::Ptr{Cdouble}, arg33::Cint, arg34::Cint, arg35::Cint, arg36::Ptr{snow_data_struct})::Cint
end

function soil_carbon_balance(arg1, arg2, arg3, arg4)
  @ccall libvic5.soil_carbon_balance(arg1::Ptr{soil_con_struct}, arg2::Ptr{energy_bal_struct}, arg3::Ptr{cell_data_struct}, arg4::Ptr{veg_var_struct})::Cvoid
end

function soil_conductivity(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble)
  @ccall libvic5.soil_conductivity(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble)::Cdouble
end

function solve_lake(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11, arg12::soil_con_struct, arg13::Cdouble, arg14::Cdouble, arg15::dmy_struct, arg16::Cdouble)
  @ccall libvic5.solve_lake(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Ptr{lake_var_struct}, arg12::soil_con_struct, arg13::Cdouble, arg14::Cdouble, arg15::dmy_struct, arg16::Cdouble)::Cint
end

function solve_snow(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25, arg26, arg27, arg28, arg29, arg30, arg31, arg32, arg33, arg34, arg35, arg36, arg37, arg38, arg39, arg40::Cint, arg41::Csize_t, arg42::Cushort, arg43::Cushort, arg44::Cdouble, arg45::Csize_t, arg46::Cint, arg47, arg48, arg49, arg50, arg51, arg52, arg53, arg54, arg55, arg56)
  @ccall libvic5.solve_snow(arg1::Cchar, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Ptr{Cdouble}, arg20::Ptr{Cdouble}, arg21::Ptr{Cdouble}, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble}, arg24::Ptr{Cdouble}, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Cdouble}, arg29::Ptr{Cdouble}, arg30::Ptr{Cdouble}, arg31::Ptr{Cdouble}, arg32::Ptr{Cdouble}, arg33::Ptr{Cdouble}, arg34::Ptr{Cdouble}, arg35::Ptr{Cdouble}, arg36::Ptr{Cdouble}, arg37::Ptr{Cdouble}, arg38::Ptr{Cdouble}, arg39::Ptr{Cdouble}, arg40::Cint, arg41::Csize_t, arg42::Cushort, arg43::Cushort, arg44::Cdouble, arg45::Csize_t, arg46::Cint, arg47::Ptr{Cint}, arg48::Ptr{Cdouble}, arg49::Ptr{Cdouble}, arg50::Ptr{dmy_struct}, arg51::Ptr{force_data_struct}, arg52::Ptr{energy_bal_struct}, arg53::Ptr{layer_data_struct}, arg54::Ptr{snow_data_struct}, arg55::Ptr{soil_con_struct}, arg56::Ptr{veg_var_struct})::Cdouble
end

function solve_T_profile(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9::Cdouble, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17::Cdouble, arg18::Cint, arg19, arg20::Cint, arg21::Cint, arg22::Cint)
  @ccall libvic5.solve_T_profile(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Cstring, arg4::Ptr{Cuint}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Cdouble, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Cdouble, arg18::Cint, arg19::Ptr{Cint}, arg20::Cint, arg21::Cint, arg22::Cint)::Cint
end

function solve_T_profile_implicit(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9::Cdouble, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17::Cdouble, arg18::Cint, arg19, arg20::Cint, arg21::Cint, arg22, arg23, arg24, arg25, arg26, arg27, arg28)
  @ccall libvic5.solve_T_profile_implicit(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Cstring, arg4::Ptr{Cuint}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Cdouble, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Cdouble, arg18::Cint, arg19::Ptr{Cint}, arg20::Cint, arg21::Cint, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble}, arg24::Ptr{Cdouble}, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Cdouble})::Cint
end

function specheat(arg1::Cdouble)
  @ccall libvic5.specheat(arg1::Cdouble)::Cdouble
end

function StabilityCorrection(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble)
  @ccall libvic5.StabilityCorrection(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble)::Cdouble
end

function sub_with_height(z::Cdouble, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble)
  @ccall libvic5.sub_with_height(z::Cdouble, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble)::Cdouble
end

function surface_fluxes(arg1::Bool, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19::Csize_t, arg20::Csize_t, arg21::Cushort, arg22::Cdouble, arg23::Cushort, arg24::Cushort, arg25, arg26, arg27, arg28, arg29, arg30, arg31, arg32, arg33::Cdouble, arg34::Cdouble, arg35::Cdouble, arg36)
  @ccall libvic5.surface_fluxes(arg1::Bool, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Ptr{Cdouble}, arg9::Ptr{Cdouble}, arg10::Ptr{Cdouble}, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Csize_t, arg20::Csize_t, arg21::Cushort, arg22::Cdouble, arg23::Cushort, arg24::Cushort, arg25::Ptr{force_data_struct}, arg26::Ptr{dmy_struct}, arg27::Ptr{energy_bal_struct}, arg28::Ptr{global_param_struct}, arg29::Ptr{cell_data_struct}, arg30::Ptr{snow_data_struct}, arg31::Ptr{soil_con_struct}, arg32::Ptr{veg_var_struct}, arg33::Cdouble, arg34::Cdouble, arg35::Cdouble, arg36::Ptr{Cdouble})::Cint
end

function svp(arg1::Cdouble)
  @ccall libvic5.svp(arg1::Cdouble)::Cdouble
end

function svp_slope(arg1::Cdouble)
  @ccall libvic5.svp_slope(arg1::Cdouble)::Cdouble
end

function temp_area(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4, arg5, arg6, arg7, arg8::Cdouble, arg9, arg10::Cint, arg11::Cdouble, arg12::Cdouble, arg13, arg14, arg15)
  @ccall libvic5.temp_area(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble}, arg7::Ptr{Cdouble}, arg8::Cdouble, arg9::Ptr{Cdouble}, arg10::Cint, arg11::Cdouble, arg12::Cdouble, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble})::Cvoid
end

function tracer_mixer(arg1, arg2, arg3, arg4::Cint, arg5::Cdouble, arg6::Cdouble, arg7)
  @ccall libvic5.tracer_mixer(arg1::Ptr{Cdouble}, arg2::Ptr{Cint}, arg3::Ptr{Cdouble}, arg4::Cint, arg5::Cdouble, arg6::Cdouble, arg7::Ptr{Cdouble})::Cvoid
end

function transpiration(arg1, arg2, arg3::Cushort, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12, arg13, arg14, arg15, arg16, arg17, arg18::Cdouble, arg19::Cdouble, arg20)
  @ccall libvic5.transpiration(arg1::Ptr{layer_data_struct}, arg2::Ptr{veg_var_struct}, arg3::Cushort, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Ptr{Cdouble}, arg16::Ptr{Cdouble}, arg17::Ptr{Cdouble}, arg18::Cdouble, arg19::Cdouble, arg20::Ptr{Cdouble})::Cvoid
end

function transport_with_height(z::Cdouble, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble)
  @ccall libvic5.transport_with_height(z::Cdouble, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble)::Cdouble
end

function trapzd(funcd, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble, a::Cdouble, b::Cdouble, n::Cint)
  @ccall libvic5.trapzd(funcd::Ptr{Cvoid}, es::Cdouble, Wind::Cdouble, AirDens::Cdouble, ZO::Cdouble, EactAir::Cdouble, F::Cdouble, hsalt::Cdouble, phi_r::Cdouble, ushear::Cdouble, Zrh::Cdouble, a::Cdouble, b::Cdouble, n::Cint)::Cdouble
end

function tridia(arg1::Cint, arg2, arg3, arg4, arg5, arg6)
  @ccall libvic5.tridia(arg1::Cint, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Ptr{Cdouble})::Cvoid
end

function tridiag(arg1, arg2, arg3, arg4, arg5::Cuint)
  @ccall libvic5.tridiag(arg1::Ptr{Cdouble}, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Ptr{Cdouble}, arg5::Cuint)::Cvoid
end

function vic_run(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  @ccall libvic5.vic_run(arg1::Ptr{force_data_struct}, arg2::Ptr{all_vars_struct}, arg3::Ptr{dmy_struct}, arg4::Ptr{global_param_struct}, arg5::Ptr{lake_con_struct}, arg6::Ptr{soil_con_struct}, arg7::Ptr{veg_con_struct}, arg8::Ptr{veg_lib_struct})::Cint
end

function volumetric_heat_capacity(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
  @ccall libvic5.volumetric_heat_capacity(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)::Cdouble
end

function water_balance(arg1, arg2::lake_con_struct, arg3::Cdouble, arg4, arg5::Cint, arg6::Cint, arg7::Cdouble, arg8::soil_con_struct, arg9::veg_con_struct)
  @ccall libvic5.water_balance(arg1::Ptr{lake_var_struct}, arg2::lake_con_struct, arg3::Cdouble, arg4::Ptr{all_vars_struct}, arg5::Cint, arg6::Cint, arg7::Cdouble, arg8::soil_con_struct, arg9::veg_con_struct)::Cint
end

function water_energy_balance(arg1::Cint, arg2, arg3, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24::Cdouble, arg25, arg26, arg27, arg28, arg29, arg30::Cdouble)
  @ccall libvic5.water_energy_balance(arg1::Cint, arg2::Ptr{Cdouble}, arg3::Ptr{Cdouble}, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Cdouble, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Cdouble, arg12::Cdouble, arg13::Cdouble, arg14::Cdouble, arg15::Cdouble, arg16::Cdouble, arg17::Ptr{Cdouble}, arg18::Ptr{Cdouble}, arg19::Ptr{Cdouble}, arg20::Ptr{Cdouble}, arg21::Ptr{Cdouble}, arg22::Ptr{Cdouble}, arg23::Ptr{Cdouble}, arg24::Cdouble, arg25::Ptr{Cdouble}, arg26::Ptr{Cdouble}, arg27::Ptr{Cdouble}, arg28::Ptr{Cdouble}, arg29::Ptr{Cdouble}, arg30::Cdouble)::Cint
end

function water_under_ice(arg1::Cint, arg2::Cdouble, arg3::Cdouble, arg4, arg5, arg6::Cdouble, arg7::Cint, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11, arg12, arg13, arg14, arg15::Cint, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19)
  @ccall libvic5.water_under_ice(arg1::Cint, arg2::Cdouble, arg3::Cdouble, arg4::Ptr{Cdouble}, arg5::Ptr{Cdouble}, arg6::Cdouble, arg7::Cint, arg8::Cdouble, arg9::Cdouble, arg10::Cdouble, arg11::Ptr{Cdouble}, arg12::Ptr{Cdouble}, arg13::Ptr{Cdouble}, arg14::Ptr{Cdouble}, arg15::Cint, arg16::Cdouble, arg17::Cdouble, arg18::Cdouble, arg19::Ptr{Cdouble})::Cint
end

function wrap_compute_zwt(arg1, arg2)
  @ccall libvic5.wrap_compute_zwt(arg1::Ptr{soil_con_struct}, arg2::Ptr{cell_data_struct})::Cvoid
end

function write_layer(arg1, arg2::Cint, arg3)
  @ccall libvic5.write_layer(arg1::Ptr{layer_data_struct}, arg2::Cint, arg3::Ptr{Cdouble})::Cvoid
end

function write_vegvar(arg1, arg2::Cint)
  @ccall libvic5.write_vegvar(arg1::Ptr{veg_var_struct}, arg2::Cint)::Cvoid
end



function air_density(t::Cdouble, p::Cdouble)
  @ccall libvic5.air_density(t::Cdouble, p::Cdouble)::Cdouble
end

function agg_stream_data(stream, dmy_current, out_data)
  @ccall libvic5.agg_stream_data(stream::Ptr{stream_struct}, dmy_current::Ptr{dmy_struct}, out_data::Ptr{Ptr{Ptr{Cdouble}}})::Cvoid
end

function all_30_day_from_dmy(dmy)
  @ccall libvic5.all_30_day_from_dmy(dmy::Ptr{dmy_struct})::Cdouble
end

function all_leap_from_dmy(dmy)
  @ccall libvic5.all_leap_from_dmy(dmy::Ptr{dmy_struct})::Cdouble
end

function alloc_aggdata(stream)
  @ccall libvic5.alloc_aggdata(stream::Ptr{stream_struct})::Cvoid
end

function alloc_out_data(ngridcells::Csize_t, out_data)
  @ccall libvic5.alloc_out_data(ngridcells::Csize_t, out_data::Ptr{Ptr{Ptr{Cdouble}}})::Cvoid
end

function average(ar, n::Csize_t)
  @ccall libvic5.average(ar::Ptr{Cdouble}, n::Csize_t)::Cdouble
end

function calc_energy_balance_error(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
  @ccall libvic5.calc_energy_balance_error(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)::Cdouble
end

function calc_root_fractions(veg_con, soil_con)
  @ccall libvic5.calc_root_fractions(veg_con::Ptr{veg_con_struct}, soil_con::Ptr{soil_con_struct})::Cvoid
end

function calc_water_balance_error(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
  @ccall libvic5.calc_water_balance_error(arg1::Cdouble, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)::Cdouble
end

function cell_method_from_agg_type(aggtype::Cushort, cell_method)
  @ccall libvic5.cell_method_from_agg_type(aggtype::Cushort, cell_method::Ptr{Cchar})::Bool
end

function check_write_flag(rec::Cint)
  @ccall libvic5.check_write_flag(rec::Cint)::Bool
end

function collect_eb_terms(arg1::energy_bal_struct, arg2::snow_data_struct, arg3::cell_data_struct, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Bool, arg8::Bool, arg9::Cdouble, arg10::Bool, arg11::Cint, arg12, arg13::Cdouble, arg14)
  @ccall libvic5.collect_eb_terms(arg1::energy_bal_struct, arg2::snow_data_struct, arg3::cell_data_struct, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Bool, arg8::Bool, arg9::Cdouble, arg10::Bool, arg11::Cint, arg12::Ptr{Cdouble}, arg13::Cdouble, arg14::Ptr{Ptr{Cdouble}})::Cvoid
end

function collect_wb_terms(arg1::cell_data_struct, arg2::veg_var_struct, arg3::snow_data_struct, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Bool, arg8::Cdouble, arg9::Bool, arg10, arg11)
  @ccall libvic5.collect_wb_terms(arg1::cell_data_struct, arg2::veg_var_struct, arg3::snow_data_struct, arg4::Cdouble, arg5::Cdouble, arg6::Cdouble, arg7::Bool, arg8::Cdouble, arg9::Bool, arg10::Ptr{Cdouble}, arg11::Ptr{Ptr{Cdouble}})::Cvoid
end

function compute_derived_state_vars(arg1, arg2, arg3)
  @ccall libvic5.compute_derived_state_vars(arg1::Ptr{all_vars_struct}, arg2::Ptr{soil_con_struct}, arg3::Ptr{veg_con_struct})::Cvoid
end

function compute_lake_params(arg1, arg2::soil_con_struct)
  @ccall libvic5.compute_lake_params(arg1::Ptr{lake_con_struct}, arg2::soil_con_struct)::Cvoid
end

function compute_treeline(arg1, arg2, arg3::Cdouble, arg4, arg5)
  @ccall libvic5.compute_treeline(arg1::Ptr{force_data_struct}, arg2::Ptr{dmy_struct}, arg3::Cdouble, arg4::Ptr{Cdouble}, arg5::Ptr{Bool})::Cvoid
end

function count_force_vars(gp)
  @ccall libvic5.count_force_vars(gp::Ptr{Libc.FILE})::Csize_t
end

function count_nstreams_nvars(gp, nstreams, nvars)
  @ccall libvic5.count_nstreams_nvars(gp::Ptr{Libc.FILE}, nstreams::Ptr{Csize_t}, nvars::Ptr{Csize_t})::Cvoid
end

function cmd_proc(argc::Cint, argv, globalfilename)
  @ccall libvic5.cmd_proc(argc::Cint, argv::Ptr{Cstring}, globalfilename::Cstring)::Cvoid
end

function compress_files(string, level::Cshort)
  @ccall libvic5.compress_files(string::Ptr{Cchar}, level::Cshort)::Cvoid
end

function create_outstream(output_streams)
  @ccall libvic5.create_outstream(output_streams::Ptr{stream_struct})::stream_struct
end

# no prototype is found for this function at vic_driver_shared_all.h:595:8, please use with caution
function get_cpu_time()
  @ccall libvic5.get_cpu_time()::Cdouble
end

function get_current_datetime(cdt)
  @ccall libvic5.get_current_datetime(cdt::Cstring)::Cvoid
end

# no prototype is found for this function at vic_driver_shared_all.h:597:8, please use with caution
function get_wall_time()
  @ccall libvic5.get_wall_time()::Cdouble
end

function date2num(origin::Cdouble, date, tzoffset::Cdouble, calendar::Cushort, time_units_::Cushort)
  @ccall libvic5.date2num(origin::Cdouble, date::Ptr{dmy_struct}, tzoffset::Cdouble, calendar::Cushort, time_units_::Cushort)::Cdouble
end

function dmy_all_30_day(julian::Cdouble, dmy)
  @ccall libvic5.dmy_all_30_day(julian::Cdouble, dmy::Ptr{dmy_struct})::Cvoid
end

function dmy_all_leap(julian::Cdouble, dmy)
  @ccall libvic5.dmy_all_leap(julian::Cdouble, dmy::Ptr{dmy_struct})::Cvoid
end

function dmy_equal(a, b)
  @ccall libvic5.dmy_equal(a::Ptr{dmy_struct}, b::Ptr{dmy_struct})::Bool
end

function dmy_julian_day(julian::Cdouble, calendar::Cushort, dmy)
  @ccall libvic5.dmy_julian_day(julian::Cdouble, calendar::Cushort, dmy::Ptr{dmy_struct})::Cvoid
end

function dmy_no_leap_day(julian::Cdouble, dmy)
  @ccall libvic5.dmy_no_leap_day(julian::Cdouble, dmy::Ptr{dmy_struct})::Cvoid
end

function dt_seconds_to_time_units(time_units_::Cushort, dt_seconds::Cdouble, dt_time_units)
  @ccall libvic5.dt_seconds_to_time_units(time_units_::Cushort, dt_seconds::Cdouble, dt_time_units::Ptr{Cdouble})::Cvoid
end

function display_current_settings(arg1::Cint)
  @ccall libvic5.display_current_settings(arg1::Cint)::Cvoid
end

function fractional_day_from_dmy(dmy)
  @ccall libvic5.fractional_day_from_dmy(dmy::Ptr{dmy_struct})::Cdouble
end

function free_all_vars(all_vars, Nveg::Cint)
  @ccall libvic5.free_all_vars(all_vars::Ptr{all_vars_struct}, Nveg::Cint)::Cvoid
end

function free_dmy(dmy)
  @ccall libvic5.free_dmy(dmy::Ptr{Ptr{dmy_struct}})::Cvoid
end

function free_out_data(ngridcells::Csize_t, out_data)
  @ccall libvic5.free_out_data(ngridcells::Csize_t, out_data::Ptr{Ptr{Ptr{Cdouble}}})::Cvoid
end

function free_streams(streams)
  @ccall libvic5.free_streams(streams::Ptr{Ptr{stream_struct}})::Cvoid
end

function free_vegcon(veg_con)
  @ccall libvic5.free_vegcon(veg_con::Ptr{Ptr{veg_con_struct}})::Cvoid
end

function generate_default_state(arg1, arg2, arg3, arg4)
  @ccall libvic5.generate_default_state(arg1::Ptr{all_vars_struct}, arg2::Ptr{soil_con_struct}, arg3::Ptr{veg_con_struct}, arg4::Ptr{dmy_struct})::Cvoid
end

function generate_default_lake_state(arg1, arg2, arg3::lake_con_struct)
  @ccall libvic5.generate_default_lake_state(arg1::Ptr{lake_var_struct}, arg2::Ptr{soil_con_struct}, arg3::lake_con_struct)::Cvoid
end

function get_default_nstreams_nvars(nstreams, nvars)
  @ccall libvic5.get_default_nstreams_nvars(nstreams::Ptr{Csize_t}, nvars::Ptr{Csize_t})::Cvoid
end


function julian_day_from_dmy(dmy, calendar::Cushort)
  @ccall libvic5.julian_day_from_dmy(dmy::Ptr{dmy_struct}, calendar::Cushort)::Cdouble
end

function leap_year(year::Cushort, calendar::Cushort)
  @ccall libvic5.leap_year(year::Cushort, calendar::Cushort)::Bool
end

function make_all_vars(nveg::Csize_t)
  @ccall libvic5.make_all_vars(nveg::Csize_t)::all_vars_struct
end

function make_cell_data(veg_type_num::Csize_t)
  @ccall libvic5.make_cell_data(veg_type_num::Csize_t)::Ptr{Ptr{cell_data_struct}}
end

function make_dmy(_global)
  @ccall libvic5.make_dmy(_global::Ptr{global_param_struct})::Ptr{dmy_struct}
end

function make_energy_bal(nveg::Csize_t)
  @ccall libvic5.make_energy_bal(nveg::Csize_t)::Ptr{Ptr{energy_bal_struct}}
end

function make_lastday(calendar::Cushort, year::Cushort, lastday)
  @ccall libvic5.make_lastday(calendar::Cushort, year::Cushort, lastday::Ptr{Cushort})::Cvoid
end

function make_snow_data(nveg::Csize_t)
  @ccall libvic5.make_snow_data(nveg::Csize_t)::Ptr{Ptr{snow_data_struct}}
end

function make_veg_var(veg_type_num::Csize_t)
  @ccall libvic5.make_veg_var(veg_type_num::Csize_t)::Ptr{Ptr{veg_var_struct}}
end

function no_leap_day_from_dmy(dmy)
  @ccall libvic5.no_leap_day_from_dmy(dmy::Ptr{dmy_struct})::Cdouble
end

function num2date(origin::Cdouble, time_value::Cdouble, tzoffset::Cdouble, calendar::Cushort, time_units_::Cushort, date)
  @ccall libvic5.num2date(origin::Cdouble, time_value::Cdouble, tzoffset::Cdouble, calendar::Cushort, time_units_::Cushort, date::Ptr{dmy_struct})::Cvoid
end

function open_file(string, type)
  @ccall libvic5.open_file(string::Ptr{Cchar}, type::Ptr{Cchar})::Ptr{Libc.FILE}
end

function parse_nc_time_units(nc_unit_chars, units, dmy)
  @ccall libvic5.parse_nc_time_units(nc_unit_chars::Cstring, units::Ptr{Cushort}, dmy::Ptr{dmy_struct})::Cvoid
end

function put_data(arg1, arg2, arg3, arg4, veg_lib, arg6, out_data, arg8, timer)
  @ccall libvic5.put_data(arg1::Ptr{all_vars_struct}, arg2::Ptr{force_data_struct}, arg3::Ptr{soil_con_struct}, arg4::Ptr{veg_con_struct}, veg_lib::Ptr{veg_lib_struct}, arg6::Ptr{lake_con_struct}, out_data::Ptr{Ptr{Cdouble}}, arg8::Ptr{save_data_struct}, timer::Ptr{timer_struct})::Cvoid
end

function print_alarm(alarm)
  @ccall libvic5.print_alarm(alarm::Ptr{alarm_struct})::Cvoid
end

function print_cell_data(cell, nlayers::Csize_t, nfrost::Csize_t)
  @ccall libvic5.print_cell_data(cell::Ptr{cell_data_struct}, nlayers::Csize_t, nfrost::Csize_t)::Cvoid
end

function print_dmy(dmy)
  @ccall libvic5.print_dmy(dmy::Ptr{dmy_struct})::Cvoid
end

function print_energy_bal(eb, nnodes::Csize_t, nfronts::Csize_t)
  @ccall libvic5.print_energy_bal(eb::Ptr{energy_bal_struct}, nnodes::Csize_t, nfronts::Csize_t)::Cvoid
end

function print_force_type(force_type)
  @ccall libvic5.print_force_type(force_type::Ptr{force_type_struct})::Cvoid
end

function print_global_param(gp)
  @ccall libvic5.print_global_param(gp::Ptr{global_param_struct})::Cvoid
end

function print_lake_con(lcon, nlnodes::Csize_t)
  @ccall libvic5.print_lake_con(lcon::Ptr{lake_con_struct}, nlnodes::Csize_t)::Cvoid
end

function print_lake_var(lvar, nlnodes::Csize_t, nfronts::Csize_t, nlayers::Csize_t, nnodes::Csize_t, nfrost::Csize_t)
  @ccall libvic5.print_lake_var(lvar::Ptr{lake_var_struct}, nlnodes::Csize_t, nfronts::Csize_t, nlayers::Csize_t, nnodes::Csize_t, nfrost::Csize_t)::Cvoid
end

function print_layer_data_states(ldata, nfrost::Csize_t)
  @ccall libvic5.print_layer_data_states(ldata::Ptr{layer_data_struct}, nfrost::Csize_t)::Cvoid
end

function print_layer_data_fluxes(ldata)
  @ccall libvic5.print_layer_data_fluxes(ldata::Ptr{layer_data_struct})::Cvoid
end

function print_license()
  @ccall libvic5.print_license()::Cvoid
end

function print_option(option)
  @ccall libvic5.print_option(option::Ptr{option_struct})::Cvoid
end


function q_to_vp(q::Cdouble, p::Cdouble)
  @ccall libvic5.q_to_vp(q::Cdouble, p::Cdouble)::Cdouble
end

function raise_alarm(alarm, dmy_current)
  @ccall libvic5.raise_alarm(alarm::Ptr{alarm_struct}, dmy_current::Ptr{dmy_struct})::Bool
end

function reset_alarm(alarm, dmy_current)
  @ccall libvic5.reset_alarm(alarm::Ptr{alarm_struct}, dmy_current::Ptr{dmy_struct})::Cvoid
end

function reset_stream(stream, dmy_current)
  @ccall libvic5.reset_stream(stream::Ptr{stream_struct}, dmy_current::Ptr{dmy_struct})::Cvoid
end

function set_output_var(stream, varname, varnum::Csize_t, format, type::Cushort, mult::Cdouble, aggtype::Cushort)
  @ccall libvic5.set_output_var(stream::Ptr{stream_struct}, varname::Cstring, varnum::Csize_t, format::Cstring, type::Cushort, mult::Cdouble, aggtype::Cushort)::Cvoid
end

function get_default_outvar_aggtype(varid::Cuint)
  @ccall libvic5.get_default_outvar_aggtype(varid::Cuint)::Cuint
end

function set_alarm(dmy_current, freq::Cuint, value, alarm)
  @ccall libvic5.set_alarm(dmy_current::Ptr{dmy_struct}, freq::Cuint, value::Ptr{Cvoid}, alarm::Ptr{alarm_struct})::Cvoid
end

function set_output_defaults(output_streams, dmy_current, default_file_format::Cushort)
  @ccall libvic5.set_output_defaults(output_streams::Ptr{Ptr{stream_struct}}, dmy_current::Ptr{dmy_struct}, default_file_format::Cushort)::Cvoid
end

# no prototype is found for this function at vic_driver_shared_all.h:698:6, please use with caution
function set_output_met_data_info()
  @ccall libvic5.set_output_met_data_info()::Cvoid
end

function setup_stream(stream, nvars::Csize_t, ngridcells::Csize_t)
  @ccall libvic5.setup_stream(stream::Ptr{stream_struct}, nvars::Csize_t, ngridcells::Csize_t)::Cvoid
end

function soil_moisture_from_water_table(soil_con, nlayers::Csize_t)
  @ccall libvic5.soil_moisture_from_water_table(soil_con::Ptr{soil_con_struct}, nlayers::Csize_t)::Cvoid
end

function sprint_dmy(str, dmy)
  @ccall libvic5.sprint_dmy(str::Cstring, dmy::Ptr{dmy_struct})::Cvoid
end

function str_from_calendar(calendar::Cushort, calendar_str)
  @ccall libvic5.str_from_calendar(calendar::Cushort, calendar_str::Cstring)::Cvoid
end

function str_from_time_units(time_units_::Cushort, unit_str)
  @ccall libvic5.str_from_time_units(time_units_::Cushort, unit_str::Cstring)::Cvoid
end

function str_to_agg_type(aggstr)
  @ccall libvic5.str_to_agg_type(aggstr::Ptr{Cchar})::Cushort
end

function str_to_ascii_format(format)
  @ccall libvic5.str_to_ascii_format(format::Cstring)::Cvoid
end

function str_to_bool(str)
  @ccall libvic5.str_to_bool(str::Ptr{Cchar})::Bool
end

function str_to_calendar(cal_chars)
  @ccall libvic5.str_to_calendar(cal_chars::Cstring)::Cushort
end

function str_to_freq_flag(freq)
  @ccall libvic5.str_to_freq_flag(freq::Ptr{Cchar})::Cushort
end

function str_to_out_mult(multstr)
  @ccall libvic5.str_to_out_mult(multstr::Ptr{Cchar})::Cdouble
end

function str_to_out_type(typestr)
  @ccall libvic5.str_to_out_type(typestr::Ptr{Cchar})::Cushort
end

function str_to_timeunits(units_chars)
  @ccall libvic5.str_to_timeunits(units_chars::Ptr{Cchar})::Cushort
end

function strpdmy(s, format, dmy)
  @ccall libvic5.strpdmy(s::Cstring, format::Cstring, dmy::Ptr{dmy_struct})::Cvoid
end

function time_delta(dmy_current, freq::Cushort, n::Cint)
  @ccall libvic5.time_delta(dmy_current::Ptr{dmy_struct}, freq::Cushort, n::Cint)::Cdouble
end

function timer_continue(t)
  @ccall libvic5.timer_continue(t::Ptr{timer_struct})::Cvoid
end

function timer_init(t)
  @ccall libvic5.timer_init(t::Ptr{timer_struct})::Cvoid
end

function timer_start(t)
  @ccall libvic5.timer_start(t::Ptr{timer_struct})::Cvoid
end

function timer_stop(t)
  @ccall libvic5.timer_stop(t::Ptr{timer_struct})::Cvoid
end

function update_step_vars(arg1, arg2, arg3)
  @ccall libvic5.update_step_vars(arg1::Ptr{all_vars_struct}, arg2::Ptr{veg_con_struct}, arg3::Ptr{veg_hist_struct})::Cint
end

function invalid_date(calendar::Cushort, dmy)
  @ccall libvic5.invalid_date(calendar::Cushort, dmy::Ptr{dmy_struct})::Cint
end

function validate_parameters()
  @ccall libvic5.validate_parameters()::Cvoid
end

function validate_streams(stream)
  @ccall libvic5.validate_streams(stream::Ptr{Ptr{stream_struct}})::Cvoid
end

function will_it_snow(t, t_offset::Cdouble, max_snow_temp::Cdouble, prcp, n::Csize_t)
  @ccall libvic5.will_it_snow(t::Ptr{Cdouble}, t_offset::Cdouble, max_snow_temp::Cdouble, prcp::Ptr{Cdouble}, n::Csize_t)::Cchar
end

function zero_output_list(arg1)
  @ccall libvic5.zero_output_list(arg1::Ptr{Ptr{Cdouble}})::Cvoid
end


function alloc_atmos(arg1::Cint, arg2)
  @ccall libvic5.alloc_atmos(arg1::Cint, arg2::Ptr{Ptr{force_data_struct}})::Cvoid
end

function alloc_veg_hist(nrecs::Cint, nveg::Cint, veg_hist)
  @ccall libvic5.alloc_veg_hist(nrecs::Cint, nveg::Cint, veg_hist::Ptr{Ptr{Ptr{veg_hist_struct}}})::Cvoid
end

function calc_netlongwave(arg1, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
  @ccall libvic5.calc_netlongwave(arg1::Ptr{Cdouble}, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)::Cvoid
end

function calc_netshort(arg1::Cdouble, arg2::Cint, arg3::Cdouble, arg4)
  @ccall libvic5.calc_netshort(arg1::Cdouble, arg2::Cint, arg3::Cdouble, arg4::Ptr{Cdouble})::Cdouble
end

function check_files(arg1, arg2)
  @ccall libvic5.check_files(arg1::Ptr{filep_struct}, arg2::Ptr{filenames_struct})::Cvoid
end

function check_save_state_flag(arg1, arg2::Csize_t)
  @ccall libvic5.check_save_state_flag(arg1::Ptr{dmy_struct}, arg2::Csize_t)::Bool
end

function check_state_file(arg1, arg2::Csize_t, arg3::Csize_t, arg4)
  @ccall libvic5.check_state_file(arg1::Cstring, arg2::Csize_t, arg3::Csize_t, arg4::Ptr{Cint})::Ptr{Libc.FILE}
end

function close_files(filep, streams)
  @ccall libvic5.close_files(filep::Ptr{filep_struct}, streams::Ptr{Ptr{stream_struct}})::Cvoid
end

function compute_cell_area(arg1)
  @ccall libvic5.compute_cell_area(arg1::Ptr{soil_con_struct})::Cvoid
end

function free_atmos(nrecs::Cint, force)
  @ccall libvic5.free_atmos(nrecs::Cint, force::Ptr{Ptr{force_data_struct}})::Cvoid
end

function free_veg_hist(nrecs::Cint, nveg::Cint, veg_hist)
  @ccall libvic5.free_veg_hist(nrecs::Cint, nveg::Cint, veg_hist::Ptr{Ptr{Ptr{veg_hist_struct}}})::Cvoid
end

function free_veglib(arg1)
  @ccall libvic5.free_veglib(arg1::Ptr{Ptr{veg_lib_struct}})::Cvoid
end

function get_dist(lat1::Cdouble, long1::Cdouble, lat2::Cdouble, long2::Cdouble)
  @ccall libvic5.get_dist(lat1::Cdouble, long1::Cdouble, lat2::Cdouble, long2::Cdouble)::Cdouble
end

function get_force_type(arg1, arg2::Cint, arg3)
  @ccall libvic5.get_force_type(arg1::Cstring, arg2::Cint, arg3::Ptr{Cint})::Cvoid
end

function get_global_param(arg1)
  @ccall libvic5.get_global_param(arg1::Ptr{Libc.FILE})::Cvoid
end

function initialize_filenames()
  @ccall libvic5.initialize_filenames()::Cvoid
end

function initialize_fileps()
  @ccall libvic5.initialize_fileps()::Cvoid
end

function initialize_forcing_files()
  @ccall libvic5.initialize_forcing_files()::Cvoid
end

function make_in_and_outfiles(filep, filenames, soil, streams, dmy)
  @ccall libvic5.make_in_and_outfiles(filep::Ptr{filep_struct}, filenames::Ptr{filenames_struct}, soil::Ptr{soil_con_struct}, streams::Ptr{Ptr{stream_struct}}, dmy::Ptr{dmy_struct})::Cvoid
end

function open_state_file(arg1, arg2::filenames_struct, arg3::Csize_t, arg4::Csize_t)
  @ccall libvic5.open_state_file(arg1::Ptr{global_param_struct}, arg2::filenames_struct, arg3::Csize_t, arg4::Csize_t)::Ptr{Libc.FILE}
end

function print_atmos_data(force, nr::Csize_t)
  @ccall libvic5.print_atmos_data(force::Ptr{force_data_struct}, nr::Csize_t)::Cvoid
end

function parse_output_info(gp, output_streams, dmy_current)
  @ccall libvic5.parse_output_info(gp::Ptr{Libc.FILE}, output_streams::Ptr{Ptr{stream_struct}}, dmy_current::Ptr{dmy_struct})::Cvoid
end

function read_atmos_data(arg1, arg2::global_param_struct, arg3::Cint, arg4::Cint, arg5, arg6)
  @ccall libvic5.read_atmos_data(arg1::Ptr{Libc.FILE}, arg2::global_param_struct, arg3::Cint, arg4::Cint, arg5::Ptr{Ptr{Cdouble}}, arg6::Ptr{Ptr{Ptr{Cdouble}}})::Cvoid
end

function read_forcing_data(arg1, arg2::global_param_struct, arg3)
  @ccall libvic5.read_forcing_data(arg1::Ptr{Ptr{Libc.FILE}}, arg2::global_param_struct, arg3::Ptr{Ptr{Ptr{Ptr{Cdouble}}}})::Ptr{Ptr{Cdouble}}
end

function read_initial_model_state(arg1, arg2, arg3::Cint, arg4::Cint, arg5::Cint, arg6, arg7::lake_con_struct)
  @ccall libvic5.read_initial_model_state(arg1::Ptr{Libc.FILE}, arg2::Ptr{all_vars_struct}, arg3::Cint, arg4::Cint, arg5::Cint, arg6::Ptr{soil_con_struct}, arg7::lake_con_struct)::Cvoid
end

function read_lakeparam(arg1, arg2::soil_con_struct, arg3)
  @ccall libvic5.read_lakeparam(arg1::Ptr{Libc.FILE}, arg2::soil_con_struct, arg3::Ptr{veg_con_struct})::lake_con_struct
end

function read_snowband(arg1, arg2)
  @ccall libvic5.read_snowband(arg1::Ptr{Libc.FILE}, arg2::Ptr{soil_con_struct})::Cvoid
end

function read_soilparam(soilparam, temp, RUN_MODEL, MODEL_DONE)
  @ccall libvic5.read_soilparam(soilparam::Ptr{Libc.FILE}, temp::Ptr{soil_con_struct}, RUN_MODEL::Ptr{Bool}, MODEL_DONE::Ptr{Bool})::Cvoid
end

function read_veglib(arg1, arg2)
  @ccall libvic5.read_veglib(arg1::Ptr{Libc.FILE}, arg2::Ptr{Csize_t})::Ptr{veg_lib_struct}
end

function read_vegparam(arg1, arg2::Cint, arg3::Csize_t)
  @ccall libvic5.read_vegparam(arg1::Ptr{Libc.FILE}, arg2::Cint, arg3::Csize_t)::Ptr{veg_con_struct}
end

function vic_force(arg1, arg2, arg3, arg4, arg5, arg6)
  @ccall libvic5.vic_force(arg1::Ptr{force_data_struct}, arg2::Ptr{dmy_struct}, arg3::Ptr{Ptr{Libc.FILE}}, arg4::Ptr{veg_con_struct}, arg5::Ptr{Ptr{veg_hist_struct}}, arg6::Ptr{soil_con_struct})::Cvoid
end

function vic_populate_model_state(arg1, arg2::filep_struct, arg3::Csize_t, arg4, arg5, arg6::lake_con_struct, arg7)
  @ccall libvic5.vic_populate_model_state(arg1::Ptr{all_vars_struct}, arg2::filep_struct, arg3::Csize_t, arg4::Ptr{soil_con_struct}, arg5::Ptr{veg_con_struct}, arg6::lake_con_struct, arg7::Ptr{dmy_struct})::Cvoid
end

function write_data(streams)
  @ccall libvic5.write_data(streams::Ptr{stream_struct})::Cvoid
end

function write_header(streams, dmy)
  @ccall libvic5.write_header(streams::Ptr{Ptr{stream_struct}}, dmy::Ptr{dmy_struct})::Cvoid
end

function write_model_state(arg1, arg2::Cint, arg3::Cint, arg4, arg5)
  @ccall libvic5.write_model_state(arg1::Ptr{all_vars_struct}, arg2::Cint, arg3::Cint, arg4::Ptr{filep_struct}, arg5::Ptr{soil_con_struct})::Cvoid
end

function write_output(streams, dmy)
  @ccall libvic5.write_output(streams::Ptr{Ptr{stream_struct}}, dmy::Ptr{dmy_struct})::Cvoid
end

function write_vic_timing_table(timers_)
  @ccall libvic5.write_vic_timing_table(timers_::Ptr{timer_struct})::Cvoid
end

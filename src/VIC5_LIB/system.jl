function print_trace()
  @ccall libvic5.print_trace()::Cvoid
end

function finalize_logging()
  @ccall libvic5.finalize_logging()::Cvoid
end

function get_logname(path, id::Cint, filename)
  @ccall libvic5.get_logname(path::Cstring, id::Cint, filename::Cstring)::Cvoid
end


function setup_logging(id::Cint, log_path, logfile)
  @ccall libvic5.setup_logging(id::Cint, log_path::Ptr{Cchar}, logfile::Ptr{Ptr{Libc.FILE}})::Cvoid
end


function assert_close_double(x::Cdouble, y::Cdouble, rtol::Cdouble, abs_tol::Cdouble)
  @ccall libvic5.assert_close_double(x::Cdouble, y::Cdouble, rtol::Cdouble, abs_tol::Cdouble)::Bool
end

function assert_close_float(x::Cfloat, y::Cfloat, rtol::Cfloat, abs_tol::Cfloat)
  @ccall libvic5.assert_close_float(x::Cfloat, y::Cfloat, rtol::Cfloat, abs_tol::Cfloat)::Bool
end





function print_out_data(out_data, metadata)
  @ccall libvic5.print_out_data(out_data::Ptr{Ptr{Cdouble}}, metadata::Ptr{metadata_struct})::Cvoid
end

function print_out_metadata(metadata, nvars::Csize_t)
  @ccall libvic5.print_out_metadata(metadata::Ptr{metadata_struct}, nvars::Csize_t)::Cvoid
end

function print_output_streams(outf)
  @ccall libvic5.print_output_streams(outf::Ptr{stream_struct})::Cvoid
end

function print_save_data(save)
  @ccall libvic5.print_save_data(save::Ptr{save_data_struct})::Cvoid
end

function print_snow_data(snow)
  @ccall libvic5.print_snow_data(snow::Ptr{snow_data_struct})::Cvoid
end

function print_soil_con(scon, nlayers::Csize_t, nnodes::Csize_t, nfrost::Csize_t, nbands::Csize_t, nzwt::Csize_t)
  @ccall libvic5.print_soil_con(scon::Ptr{soil_con_struct}, nlayers::Csize_t, nnodes::Csize_t, nfrost::Csize_t, nbands::Csize_t, nzwt::Csize_t)::Cvoid
end

function print_stream(stream, metadata)
  @ccall libvic5.print_stream(stream::Ptr{stream_struct}, metadata::Ptr{metadata_struct})::Cvoid
end

function print_veg_con(vcon, nroots::Csize_t, blowing::Cchar, lake::Cchar, carbon::Cchar, ncanopy::Csize_t)
  @ccall libvic5.print_veg_con(vcon::Ptr{veg_con_struct}, nroots::Csize_t, blowing::Cchar, lake::Cchar, carbon::Cchar, ncanopy::Csize_t)::Cvoid
end

function print_veg_lib(vlib, carbon::Cchar)
  @ccall libvic5.print_veg_lib(vlib::Ptr{veg_lib_struct}, carbon::Cchar)::Cvoid
end

function print_veg_var(vvar, ncanopy::Csize_t)
  @ccall libvic5.print_veg_var(vvar::Ptr{veg_var_struct}, ncanopy::Csize_t)::Cvoid
end


function print_usage(arg1)
  @ccall libvic5.print_usage(arg1::Cstring)::Cvoid
end

function print_license()
  @ccall libvic5.print_license()::Cvoid
end

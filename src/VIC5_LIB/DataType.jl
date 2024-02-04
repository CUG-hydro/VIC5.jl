mutable struct option_struct
  AboveTreelineVeg::Cshort
  AERO_RESIST_CANSNOW::Cushort
  BLOWING::Bool
  BLOWING_VAR_THRESHOLD::Bool
  BLOWING_CALC_PROB::Bool
  BLOWING_SIMPLE::Bool
  BLOWING_FETCH::Bool
  BLOWING_SPATIAL_WIND::Bool
  CARBON::Bool
  CLOSE_ENERGY::Bool
  COMPUTE_TREELINE::Bool
  CONTINUEONERROR::Bool
  CORRPREC::Bool
  EQUAL_AREA::Bool
  EXP_TRANS::Bool
  FROZEN_SOIL::Bool
  FULL_ENERGY::Bool
  GRND_FLUX_TYPE::Cushort
  IMPLICIT::Bool
  JULY_TAVG_SUPPLIED::Bool
  LAKES::Bool
  Ncanopy::UInt64
  Nfrost::UInt64
  Nlakebasnode::UInt64
  Nlakenode::UInt64
  Nlayer::UInt64
  Nnode::UInt64
  NOFLUX::Bool
  NVEGTYPES::UInt64
  RC_MODE::Cushort
  ROOT_ZONES::UInt64
  QUICK_FLUX::Bool
  QUICK_SOLVE::Bool
  SHARE_LAYER_MOIST::Bool
  SNOW_DENSITY::Cushort
  SNOW_BAND::UInt64
  SPATIAL_FROST::Bool
  SPATIAL_SNOW::Bool
  TFALLBACK::Bool
  BASEFLOW::Cushort
  GRID_DECIMAL::Cushort
  VEGLIB_FCAN::Bool
  VEGLIB_PHOTO::Bool
  VEGPARAM_ALB::Bool
  VEGPARAM_FCAN::Bool
  VEGPARAM_LAI::Bool
  ALB_SRC::Cushort
  FCAN_SRC::Cushort
  LAI_SRC::Cushort
  LAKE_PROFILE::Bool
  ORGANIC_FRACT::Bool
  BULK_DENSITY_COMB::Bool
  MAX_SNOW_ALBEDO::Bool
  STATE_FORMAT::Cushort
  INIT_STATE::Bool
  SAVE_STATE::Bool
  STATENAME_CESM::Bool
  Noutstreams::UInt64
end

mutable struct global_param_struct
  wind_h::Cdouble
  resolution::Cdouble
  dt::Cdouble
  snow_dt::Cdouble
  runoff_dt::Cdouble
  atmos_dt::Cdouble
  model_steps_per_day::UInt64
  snow_steps_per_day::UInt64
  runoff_steps_per_day::UInt64
  atmos_steps_per_day::UInt64
  endday::Cushort
  endmonth::Cushort
  endyear::Cushort
  forceday::NTuple{2,Cushort}
  forcesec::NTuple{2,Cuint}
  forcemonth::NTuple{2,Cushort}
  forceoffset::NTuple{2,Cushort}
  forceskip::NTuple{2,Cuint}
  forceyear::NTuple{2,Cushort}
  nrecs::UInt64
  startday::Cushort
  startmonth::Cushort
  startsec::Cuint
  startyear::Cushort
  stateday::Cushort
  statemonth::Cushort
  statesec::Cuint
  stateyear::Cushort
  calendar::Cushort
  time_units::Cushort
  time_origin_num::Cdouble
  time_origin_str::NTuple{2048,Cchar}
end

mutable struct parameters_struct
  LAPSE_RATE::Cdouble
  GAUGE_HEIGHT::Cdouble
  HUGE_RESIST::Cdouble
  ALBEDO_BARE_SOIL::Cdouble
  EMISS_GRND::Cdouble
  EMISS_VEG::Cdouble
  EMISS_ICE::Cdouble
  EMISS_SNOW::Cdouble
  EMISS_H2O::Cdouble
  SOIL_RARC::Cdouble
  SOIL_RESID_MOIST::Cdouble
  SOIL_SLAB_MOIST_FRACT::Cdouble
  SOIL_WINDH::Cdouble
  VEG_LAI_SNOW_MULTIPLIER::Cdouble
  VEG_LAI_WATER_FACTOR::Cdouble
  VEG_MIN_INTERCEPTION_STORAGE::Cdouble
  VEG_RATIO_DH_HEIGHT::Cdouble
  VEG_RATIO_RL_HEIGHT::Cdouble
  CANOPY_CLOSURE::Cdouble
  CANOPY_RSMAX::Cdouble
  CANOPY_VPDMINFACTOR::Cdouble
  LAKE_TMELT::Cdouble
  LAKE_MAX_SURFACE::Cdouble
  LAKE_BETA::Cdouble
  LAKE_FRACMIN::Cdouble
  LAKE_FRACLIM::Cdouble
  LAKE_DM::Cdouble
  LAKE_SNOWCRIT::Cdouble
  LAKE_ZWATER::Cdouble
  LAKE_ZSNOW::Cdouble
  LAKE_RHOSNOW::Cdouble
  LAKE_CONDI::Cdouble
  LAKE_CONDS::Cdouble
  LAKE_LAMISW::Cdouble
  LAKE_LAMILW::Cdouble
  LAKE_LAMSSW::Cdouble
  LAKE_LAMSLW::Cdouble
  LAKE_LAMWSW::Cdouble
  LAKE_LAMWLW::Cdouble
  LAKE_A1::Cdouble
  LAKE_A2::Cdouble
  LAKE_QWTAU::Cdouble
  LAKE_MAX_ITER::Cint
  SVP_A::Cdouble
  SVP_B::Cdouble
  SVP_C::Cdouble
  PHOTO_OMEGA::Cdouble
  PHOTO_LAIMAX::Cdouble
  PHOTO_LAILIMIT::Cdouble
  PHOTO_LAIMIN::Cdouble
  PHOTO_EPAR::Cdouble
  PHOTO_FCMAX::Cdouble
  PHOTO_FCMIN::Cdouble
  PHOTO_ZENITHMIN::Cdouble
  PHOTO_ZENITHMINPAR::Cdouble
  PHOTO_ALBSOIPARMIN::Cdouble
  PHOTO_MINMAXETRANS::Cdouble
  PHOTO_MINSTOMCOND::Cdouble
  PHOTO_FCI1C3::Cdouble
  PHOTO_FCI1C4::Cdouble
  PHOTO_OX::Cdouble
  PHOTO_KC::Cdouble
  PHOTO_KO::Cdouble
  PHOTO_EC::Cdouble
  PHOTO_EO::Cdouble
  PHOTO_EV::Cdouble
  PHOTO_ER::Cdouble
  PHOTO_ALC3::Cdouble
  PHOTO_FRDC3::Cdouble
  PHOTO_EK::Cdouble
  PHOTO_ALC4::Cdouble
  PHOTO_FRDC4::Cdouble
  PHOTO_THETA::Cdouble
  PHOTO_FRLEAF::Cdouble
  PHOTO_FRGROWTH::Cdouble
  SRESP_E0_LT::Cdouble
  SRESP_T0_LT::Cdouble
  SRESP_WMINFM::Cdouble
  SRESP_WMAXFM::Cdouble
  SRESP_WOPTFM::Cdouble
  SRESP_RHSAT::Cdouble
  SRESP_RFACTOR::Cdouble
  SRESP_TAULITTER::Cdouble
  SRESP_TAUINTER::Cdouble
  SRESP_TAUSLOW::Cdouble
  SRESP_FAIR::Cdouble
  SRESP_FINTER::Cdouble
  SNOW_MAX_SURFACE_SWE::Cdouble
  SNOW_LIQUID_WATER_CAPACITY::Cdouble
  SNOW_NEW_SNOW_DENSITY::Cdouble
  SNOW_NEW_SNOW_DENS_MAX::Cdouble
  SNOW_DEPTH_THRES::Cdouble
  SNOW_DENS_DMLIMIT::Cdouble
  SNOW_DENS_DMLIMIT_FACTOR::Cdouble
  SNOW_DENS_MAX_CHANGE::Cdouble
  SNOW_DENS_ETA0::Cdouble
  SNOW_DENS_C1::Cdouble
  SNOW_DENS_C2::Cdouble
  SNOW_DENS_C3::Cdouble
  SNOW_DENS_C3_CONST::Cdouble
  SNOW_DENS_C4::Cdouble
  SNOW_DENS_C4WET::Cdouble
  SNOW_DENS_C5::Cdouble
  SNOW_DENS_C6::Cdouble
  SNOW_DENS_F::Cdouble
  SNOW_DENS_EXP::Cdouble
  SNOW_DENS_DENOM::Cdouble
  SNOW_NEW_SNT_C1::Cdouble
  SNOW_NEW_SNT_C2::Cdouble
  SNOW_NEW_SNT_C3::Cdouble
  SNOW_NEW_BRAS_DENOM::Cdouble
  SNOW_MIN_SWQ_EB_THRES::Cdouble
  SNOW_A1::Cdouble
  SNOW_A2::Cdouble
  SNOW_L1::Cdouble
  SNOW_L2::Cdouble
  SNOW_NEW_SNOW_ALB::Cdouble
  SNOW_ALB_ACCUM_A::Cdouble
  SNOW_ALB_ACCUM_B::Cdouble
  SNOW_ALB_THAW_A::Cdouble
  SNOW_ALB_THAW_B::Cdouble
  SNOW_TRACESNOW::Cdouble
  SNOW_CONDUCT::Cdouble
  SNOW_MAX_SNOW_TEMP::Cdouble
  SNOW_MIN_RAIN_TEMP::Cdouble
  BLOWING_KA::Cdouble
  BLOWING_CSALT::Cdouble
  BLOWING_UTHRESH::Cdouble
  BLOWING_KIN_VIS::Cdouble
  BLOWING_MAX_ITER::Cint
  BLOWING_K::Cint
  BLOWING_SETTLING::Cdouble
  BLOWING_NUMINCS::Cint
  TREELINE_TEMPERATURE::Cdouble
  SNOW_DT::Cdouble
  SURF_DT::Cdouble
  SOIL_DT::Cdouble
  CANOPY_DT::Cdouble
  CANOPY_VP::Cdouble
  TOL_GRND::Cdouble
  TOL_OVER::Cdouble
  FROZEN_MAXITER::Cint
  MAX_ITER_GRND_CANOPY::Cint
  NEWT_RAPH_MAXTRIAL::Cint
  NEWT_RAPH_TOLX::Cdouble
  NEWT_RAPH_TOLF::Cdouble
  NEWT_RAPH_R_MAX::Cdouble
  NEWT_RAPH_R_MIN::Cdouble
  NEWT_RAPH_RELAX1::Cdouble
  NEWT_RAPH_RELAX2::Cdouble
  NEWT_RAPH_RELAX3::Cdouble
  NEWT_RAPH_EPS2::Cdouble
  ROOT_BRENT_MAXTRIES::Cint
  ROOT_BRENT_MAXITER::Cint
  ROOT_BRENT_TSTEP::Cdouble
  ROOT_BRENT_T::Cdouble
end

mutable struct soil_con_struct
  FS_ACTIVE::Bool
  Ds::Cdouble
  Dsmax::Cdouble
  Ksat::NTuple{3,Cdouble}
  Wcr::NTuple{3,Cdouble}
  Wpwp::NTuple{3,Cdouble}
  Ws::Cdouble
  AlbedoPar::Cdouble
  alpha::NTuple{50,Cdouble}
  annual_prec::Cdouble
  avg_temp::Cdouble
  avgJulyAirTemp::Cdouble
  b_infilt::Cdouble
  beta::NTuple{50,Cdouble}
  bubble::NTuple{3,Cdouble}
  bubble_node::NTuple{50,Cdouble}
  bulk_density::NTuple{3,Cdouble}
  bulk_dens_min::NTuple{3,Cdouble}
  bulk_dens_org::NTuple{3,Cdouble}
  c::Cdouble
  depth::NTuple{3,Cdouble}
  dp::Cdouble
  dz_node::NTuple{50,Cdouble}
  Zsum_node::NTuple{50,Cdouble}
  expt::NTuple{3,Cdouble}
  expt_node::NTuple{50,Cdouble}
  frost_fract::NTuple{10,Cdouble}
  frost_slope::Cdouble
  gamma::NTuple{50,Cdouble}
  init_moist::NTuple{3,Cdouble}
  max_infil::Cdouble
  max_moist::NTuple{3,Cdouble}
  max_snow_distrib_slope::Cdouble
  phi_s::NTuple{3,Cdouble}
  porosity::NTuple{3,Cdouble}
  porosity_node::NTuple{50,Cdouble}
  quartz::NTuple{3,Cdouble}
  organic::NTuple{3,Cdouble}
  resid_moist::NTuple{3,Cdouble}
  rough::Cdouble
  snow_rough::Cdouble
  soil_density::NTuple{3,Cdouble}
  soil_dens_min::NTuple{3,Cdouble}
  soil_dens_org::NTuple{3,Cdouble}
  BandElev::Ptr{Cdouble}
  AreaFract::Ptr{Cdouble}
  Pfactor::Ptr{Cdouble}
  Tfactor::Ptr{Cdouble}
  AboveTreeLine::Ptr{Bool}
  elevation::Cdouble
  lat::Cdouble
  lng::Cdouble
  cell_area::Cdouble
  time_zone_lng::Cdouble
  gridcel::Cuint
  zwtvmoist_zwt::NTuple{5,NTuple{11,Cdouble}}
  zwtvmoist_moist::NTuple{5,NTuple{11,Cdouble}}
  slope::Cdouble
  aspect::Cdouble
  ehoriz::Cdouble
  whoriz::Cdouble
end

mutable struct veg_con_struct
  albedo::NTuple{12,Cdouble}
  CanopLayerBnd::Ptr{Cdouble}
  Cv::Cdouble
  displacement::NTuple{12,Cdouble}
  fcanopy::NTuple{12,Cdouble}
  fetch::Cdouble
  LAI::NTuple{12,Cdouble}
  LAKE::Cint
  lag_one::Cdouble
  root::NTuple{3,Cdouble}
  roughness::NTuple{12,Cdouble}
  sigma_slope::Cdouble
  veg_class::Cint
  vegetat_type_num::UInt64
  Wdmax::NTuple{12,Cdouble}
  zone_depth::Ptr{Cdouble}
  zone_fract::Ptr{Cdouble}
end

mutable struct veg_lib_struct
  albedo::NTuple{12,Cdouble}
  displacement::NTuple{12,Cdouble}
  emissivity::NTuple{12,Cdouble}
  fcanopy::NTuple{12,Cdouble}
  LAI::NTuple{12,Cdouble}
  NVegLibTypes::UInt64
  overstory::Bool
  max_snow_albedo::Cdouble
  rad_atten::Cdouble
  rarc::Cdouble
  rmin::Cdouble
  roughness::NTuple{12,Cdouble}
  trunk_ratio::Cdouble
  Wdmax::NTuple{12,Cdouble}
  wind_atten::Cdouble
  wind_h::Cdouble
  RGL::Cdouble
  veg_class::Cushort
  Ctype::Cchar
  CO2Specificity::Cdouble
  LightUseEff::Cdouble
  MaxCarboxRate::Cdouble
  MaxETransport::Cdouble
  NPPfactor_sat::Cdouble
  NscaleFlag::Bool
  Wnpp_inhib::Cdouble
end

struct veg_hist_struct
  albedo::Ptr{Cdouble}
  displacement::Ptr{Cdouble}
  fcanopy::Ptr{Cdouble}
  LAI::Ptr{Cdouble}
  roughness::Ptr{Cdouble}
end

mutable struct force_data_struct
  air_temp::Ptr{Cdouble}
  Catm::Ptr{Cdouble}
  channel_in::Ptr{Cdouble}
  coszen::Ptr{Cdouble}
  density::Ptr{Cdouble}
  fdir::Ptr{Cdouble}
  longwave::Ptr{Cdouble}
  out_prec::Cdouble
  out_rain::Cdouble
  out_snow::Cdouble
  par::Ptr{Cdouble}
  prec::Ptr{Cdouble}
  pressure::Ptr{Cdouble}
  shortwave::Ptr{Cdouble}
  snowflag::Ptr{Bool}
  vp::Ptr{Cdouble}
  vpd::Ptr{Cdouble}
  wind::Ptr{Cdouble}
end

@with_kw mutable struct dmy_struct
  day::Cushort = Cushort(1)
  day_in_year::Cushort = Cushort(1)
  month::Cushort = Cushort(1)
  year::Cint = Cint(1961)
  dayseconds::Cuint = Cuint(0)
end

struct layer_data_struct
  Cs::Cdouble
  T::Cdouble
  ice::NTuple{10,Cdouble}
  kappa::Cdouble
  moist::Cdouble
  phi::Cdouble
  zwt::Cdouble
  esoil::Cdouble
  evap::Cdouble
  transp::Cdouble
end

struct cell_data_struct
  aero_resist::NTuple{2,Cdouble}
  asat::Cdouble
  CLitter::Cdouble
  CInter::Cdouble
  CSlow::Cdouble
  layer::NTuple{3,layer_data_struct}
  rootmoist::Cdouble
  wetness::Cdouble
  zwt::Cdouble
  zwt_lumped::Cdouble
  pot_evap::Cdouble
  baseflow::Cdouble
  runoff::Cdouble
  inflow::Cdouble
  RhLitter::Cdouble
  RhLitter2Atm::Cdouble
  RhInter::Cdouble
  RhSlow::Cdouble
  RhTot::Cdouble
end

struct energy_bal_struct
  AlbedoLake::Cdouble
  AlbedoOver::Cdouble
  AlbedoUnder::Cdouble
  Cs::NTuple{2,Cdouble}
  Cs_node::NTuple{50,Cdouble}
  fdepth::NTuple{3,Cdouble}
  frozen::Bool
  ice::NTuple{50,Cdouble}
  kappa::NTuple{2,Cdouble}
  kappa_node::NTuple{50,Cdouble}
  moist::NTuple{50,Cdouble}
  Nfrost::UInt64
  Nthaw::UInt64
  T::NTuple{50,Cdouble}
  T_fbflag::NTuple{50,Bool}
  T_fbcount::NTuple{50,Cuint}
  T1_index::Cint
  Tcanopy::Cdouble
  Tcanopy_fbflag::Bool
  Tcanopy_fbcount::Cuint
  tdepth::NTuple{3,Cdouble}
  Tfoliage::Cdouble
  Tfoliage_fbflag::Bool
  Tfoliage_fbcount::Cuint
  Tsurf::Cdouble
  Tsurf_fbflag::Bool
  Tsurf_fbcount::Cuint
  unfrozen::Cdouble
  advected_sensible::Cdouble
  advection::Cdouble
  AtmosError::Cdouble
  AtmosLatent::Cdouble
  AtmosLatentSub::Cdouble
  AtmosSensible::Cdouble
  canopy_advection::Cdouble
  canopy_latent::Cdouble
  canopy_latent_sub::Cdouble
  canopy_refreeze::Cdouble
  canopy_sensible::Cdouble
  deltaCC::Cdouble
  deltaH::Cdouble
  error::Cdouble
  fusion::Cdouble
  grnd_flux::Cdouble
  latent::Cdouble
  latent_sub::Cdouble
  longwave::Cdouble
  LongOverIn::Cdouble
  LongUnderIn::Cdouble
  LongUnderOut::Cdouble
  melt_energy::Cdouble
  NetLongAtmos::Cdouble
  NetLongOver::Cdouble
  NetLongUnder::Cdouble
  NetShortAtmos::Cdouble
  NetShortGrnd::Cdouble
  NetShortOver::Cdouble
  NetShortUnder::Cdouble
  out_long_canopy::Cdouble
  out_long_surface::Cdouble
  refreeze_energy::Cdouble
  sensible::Cdouble
  shortwave::Cdouble
  ShortOverIn::Cdouble
  ShortUnderIn::Cdouble
  snow_flux::Cdouble
end

struct veg_var_struct
  albedo::Cdouble
  displacement::Cdouble
  fcanopy::Cdouble
  LAI::Cdouble
  roughness::Cdouble
  Wdew::Cdouble
  Wdmax::Cdouble
  canopyevap::Cdouble
  throughfall::Cdouble
  AnnualNPP::Cdouble
  AnnualNPPPrev::Cdouble
  Ci::Cdouble
  CiLayer::Ptr{Cdouble}
  NPPfactor::Cdouble
  NscaleFactor::Ptr{Cdouble}
  rc::Cdouble
  rsLayer::Ptr{Cdouble}
  aPAR::Cdouble
  aPARLayer::Ptr{Cdouble}
  GPP::Cdouble
  Litterfall::Cdouble
  NPP::Cdouble
  Raut::Cdouble
  Rdark::Cdouble
  Rgrowth::Cdouble
  Rmaint::Cdouble
  Rphoto::Cdouble
end

struct snow_data_struct
  albedo::Cdouble
  canopy_albedo::Cdouble
  coldcontent::Cdouble
  coverage::Cdouble
  density::Cdouble
  depth::Cdouble
  last_snow::Cuint
  max_snow_depth::Cdouble
  MELTING::Bool
  pack_temp::Cdouble
  pack_water::Cdouble
  snow::Bool
  snow_canopy::Cdouble
  store_coverage::Cdouble
  store_snow::Bool
  store_swq::Cdouble
  surf_temp::Cdouble
  surf_temp_fbcount::Cuint
  surf_temp_fbflag::Bool
  surf_water::Cdouble
  swq::Cdouble
  snow_distrib_slope::Cdouble
  tmp_int_storage::Cdouble
  blowing_flux::Cdouble
  canopy_vapor_flux::Cdouble
  mass_error::Cdouble
  melt::Cdouble
  Qnet::Cdouble
  surface_flux::Cdouble
  transport::Cdouble
  vapor_flux::Cdouble
end

struct gridcell_avg_struct
  avg_albedo::Cdouble
end

struct lake_con_struct
  numnod::UInt64
  z::NTuple{21,Cdouble}
  basin::NTuple{21,Cdouble}
  Cl::NTuple{21,Cdouble}
  b::Cdouble
  maxdepth::Cdouble
  mindepth::Cdouble
  maxvolume::Cdouble
  minvolume::Cdouble
  bpercent::Cdouble
  rpercent::Cdouble
  wfrac::Cdouble
  depth_in::Cdouble
  lake_idx::Cint
end

struct lake_var_struct
  activenod::Cushort
  dz::Cdouble
  surfdz::Cdouble
  ldepth::Cdouble
  surface::NTuple{21,Cdouble}
  sarea::Cdouble
  sarea_save::Cdouble
  volume::Cdouble
  volume_save::Cdouble
  temp::NTuple{20,Cdouble}
  tempavg::Cdouble
  areai::Cdouble
  new_ice_area::Cdouble
  ice_water_eq::Cdouble
  hice::Cdouble
  tempi::Cdouble
  swe::Cdouble
  swe_save::Cdouble
  surf_temp::Cdouble
  pack_temp::Cdouble
  coldcontent::Cdouble
  surf_water::Cdouble
  pack_water::Cdouble
  SAlbedo::Cdouble
  sdepth::Cdouble
  aero_resist::Cdouble
  density::NTuple{20,Cdouble}
  baseflow_in::Cdouble
  baseflow_out::Cdouble
  channel_in::Cdouble
  evapw::Cdouble
  ice_throughfall::Cdouble
  prec::Cdouble
  recharge::Cdouble
  runoff_in::Cdouble
  runoff_out::Cdouble
  snowmlt::Cdouble
  vapor_flux::Cdouble
  snow::snow_data_struct
  energy::energy_bal_struct
  soil::cell_data_struct
end

struct all_vars_struct
  cell::Ptr{Ptr{cell_data_struct}}
  energy::Ptr{Ptr{energy_bal_struct}}
  lake_var::lake_var_struct
  snow::Ptr{Ptr{snow_data_struct}}
  veg_var::Ptr{Ptr{veg_var_struct}}
  gridcell_avg::gridcell_avg_struct
end




struct force_type_struct
  N_ELEM::UInt64
  SIGNED::Bool
  SUPPLIED::Bool
  multiplier::Cdouble
  varname::NTuple{2048,Cchar}
end

struct param_set_struct
  TYPE::NTuple{15,force_type_struct}
  FORCE_DT::NTuple{2,Cdouble}
  force_steps_per_day::NTuple{2,UInt64}
  FORCE_ENDIAN::NTuple{2,Cushort}
  FORCE_FORMAT::NTuple{2,Cint}
  FORCE_INDEX::NTuple{2,NTuple{15,Cint}}
  N_TYPES::NTuple{2,UInt64}
end

struct alarm_struct
  count::Cuint
  next_dmy::dmy_struct
  next_count::Cint
  freq::Cuint
  n::Cint
  is_subdaily::Bool
end

struct stream_struct
  nvars::UInt64
  ngridcells::UInt64
  time_bounds::NTuple{2,dmy_struct}
  prefix::NTuple{2048,Cchar}
  filename::NTuple{2048,Cchar}
  fh::Ptr{Libc.FILE}
  file_format::Cushort
  compress::Cshort
  type::Ptr{Cushort}
  mult::Ptr{Cdouble}
  format::Ptr{Cstring}
  varid::Ptr{Cuint}
  aggtype::Ptr{Cushort}
  aggdata::Ptr{Ptr{Ptr{Ptr{Cdouble}}}}
  agg_alarm::alarm_struct
  write_alarm::alarm_struct
end

struct save_data_struct
  total_moist_storage::Cdouble
  total_soil_moist::Cdouble
  surfstor::Cdouble
  swe::Cdouble
  wdew::Cdouble
end

struct metadata_struct
  varname::NTuple{2048,Cchar}
  long_name::NTuple{2048,Cchar}
  standard_name::NTuple{2048,Cchar}
  units::NTuple{2048,Cchar}
  description::NTuple{2048,Cchar}
  nelem::UInt64
end

struct Error_struct
  force::Ptr{force_data_struct}
  dt::Cdouble
  energy::Ptr{energy_bal_struct}
  rec::UInt64
  out_data::Ptr{Ptr{Cdouble}}
  output_streams::Ptr{stream_struct}
  snow::Ptr{snow_data_struct}
  soil_con::soil_con_struct
  veg_con::Ptr{veg_con_struct}
  veg_var::Ptr{veg_var_struct}
end

struct timer_struct
  start_wall::Cdouble
  start_cpu::Cdouble
  stop_wall::Cdouble
  stop_cpu::Cdouble
  delta_wall::Cdouble
  delta_cpu::Cdouble
end



struct filep_struct
  forcing::NTuple{2,Ptr{Libc.FILE}}
  globalparam::Ptr{Libc.FILE}
  constants::Ptr{Libc.FILE}
  init_state::Ptr{Libc.FILE}
  lakeparam::Ptr{Libc.FILE}
  snowband::Ptr{Libc.FILE}
  soilparam::Ptr{Libc.FILE}
  statefile::Ptr{Libc.FILE}
  veglib::Ptr{Libc.FILE}
  vegparam::Ptr{Libc.FILE}
  logfile::Ptr{Libc.FILE}
end

# struct filenames_struct
#   forcing::NTuple{2,NTuple{2048,Cchar}}
#   f_path_pfx::NTuple{2,NTuple{2048,Cchar}}
#   _global::NTuple{2048,Cchar}
#   constants::NTuple{2048,Cchar}
#   init_state::NTuple{2048,Cchar}
#   lakeparam::NTuple{2048,Cchar}
#   result_dir::NTuple{2048,Cchar}
#   snowband::NTuple{2048,Cchar}
#   soil::NTuple{2048,Cchar}
#   statefile::NTuple{2048,Cchar}
#   veg::NTuple{2048,Cchar}
#   veglib::NTuple{2048,Cchar}
#   log_path::NTuple{2048,Cchar}
# end

struct filenames_struct
  forcing::NTuple{2,Cstring}
  f_path_pfx::NTuple{2,Cstring}
  _global::Cstring
  constants::Cstring
  init_state::Cstring
  lakeparam::Cstring
  result_dir::Cstring
  snowband::Cstring
  soil::Cstring
  statefile::Cstring
  veg::Cstring
  veglib::Cstring
  log_path::Cstring
end

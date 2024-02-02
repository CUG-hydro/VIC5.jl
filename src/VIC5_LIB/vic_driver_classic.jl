function print_trace()
    @ccall libvic5.print_trace()::Cvoid
end

function finalize_logging()
    @ccall libvic5.finalize_logging()::Cvoid
end

function get_logname(path, id::Cint, filename)
    @ccall libvic5.get_logname(path::Cstring, id::Cint, filename::Cstring)::Cvoid
end

function initialize_log()
    @ccall libvic5.initialize_log()::Cvoid
end

function setup_logging(id::Cint, log_path, logfile)
    @ccall libvic5.setup_logging(id::Cint, log_path::Ptr{Cchar}, logfile::Ptr{Ptr{Libc.FILE}})::Cvoid
end

@cenum var"##Ctag#2132"::UInt32 begin
    DENS_BRAS = 0
    DENS_SNTHRM = 1
end

@cenum var"##Ctag#2133"::UInt32 begin
    ARNO = 0
    NIJSSEN2001 = 1
end

@cenum var"##Ctag#2134"::UInt32 begin
    AR_406 = 0
    AR_406_LS = 1
    AR_406_FULL = 2
    AR_410 = 3
end

@cenum var"##Ctag#2135"::UInt32 begin
    GF_406 = 0
    GF_410 = 1
end

@cenum var"##Ctag#2136"::UInt32 begin
    RC_JARVIS = 0
    RC_PHOTO = 1
end

@cenum var"##Ctag#2137"::UInt32 begin
    PS_FARQUHAR = 0
    PS_MONTEITH = 1
end

@cenum var"##Ctag#2138"::UInt32 begin
    PHOTO_C3 = 0
    PHOTO_C4 = 1
end

struct option_struct
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
    Ncanopy::Csize_t
    Nfrost::Csize_t
    Nlakebasnode::Csize_t
    Nlakenode::Csize_t
    Nlayer::Csize_t
    Nnode::Csize_t
    NOFLUX::Bool
    NVEGTYPES::Csize_t
    RC_MODE::Cushort
    ROOT_ZONES::Csize_t
    QUICK_FLUX::Bool
    QUICK_SOLVE::Bool
    SHARE_LAYER_MOIST::Bool
    SNOW_DENSITY::Cushort
    SNOW_BAND::Csize_t
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
    Noutstreams::Csize_t
end

struct global_param_struct
    wind_h::Cdouble
    resolution::Cdouble
    dt::Cdouble
    snow_dt::Cdouble
    runoff_dt::Cdouble
    atmos_dt::Cdouble
    model_steps_per_day::Csize_t
    snow_steps_per_day::Csize_t
    runoff_steps_per_day::Csize_t
    atmos_steps_per_day::Csize_t
    endday::Cushort
    endmonth::Cushort
    endyear::Cushort
    forceday::NTuple{2, Cushort}
    forcesec::NTuple{2, Cuint}
    forcemonth::NTuple{2, Cushort}
    forceoffset::NTuple{2, Cushort}
    forceskip::NTuple{2, Cuint}
    forceyear::NTuple{2, Cushort}
    nrecs::Csize_t
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
    time_origin_str::NTuple{2048, Cchar}
end

struct parameters_struct
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

struct soil_con_struct
    FS_ACTIVE::Bool
    Ds::Cdouble
    Dsmax::Cdouble
    Ksat::NTuple{3, Cdouble}
    Wcr::NTuple{3, Cdouble}
    Wpwp::NTuple{3, Cdouble}
    Ws::Cdouble
    AlbedoPar::Cdouble
    alpha::NTuple{50, Cdouble}
    annual_prec::Cdouble
    avg_temp::Cdouble
    avgJulyAirTemp::Cdouble
    b_infilt::Cdouble
    beta::NTuple{50, Cdouble}
    bubble::NTuple{3, Cdouble}
    bubble_node::NTuple{50, Cdouble}
    bulk_density::NTuple{3, Cdouble}
    bulk_dens_min::NTuple{3, Cdouble}
    bulk_dens_org::NTuple{3, Cdouble}
    c::Cdouble
    depth::NTuple{3, Cdouble}
    dp::Cdouble
    dz_node::NTuple{50, Cdouble}
    Zsum_node::NTuple{50, Cdouble}
    expt::NTuple{3, Cdouble}
    expt_node::NTuple{50, Cdouble}
    frost_fract::NTuple{10, Cdouble}
    frost_slope::Cdouble
    gamma::NTuple{50, Cdouble}
    init_moist::NTuple{3, Cdouble}
    max_infil::Cdouble
    max_moist::NTuple{3, Cdouble}
    max_snow_distrib_slope::Cdouble
    phi_s::NTuple{3, Cdouble}
    porosity::NTuple{3, Cdouble}
    porosity_node::NTuple{50, Cdouble}
    quartz::NTuple{3, Cdouble}
    organic::NTuple{3, Cdouble}
    resid_moist::NTuple{3, Cdouble}
    rough::Cdouble
    snow_rough::Cdouble
    soil_density::NTuple{3, Cdouble}
    soil_dens_min::NTuple{3, Cdouble}
    soil_dens_org::NTuple{3, Cdouble}
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
    zwtvmoist_zwt::NTuple{5, NTuple{11, Cdouble}}
    zwtvmoist_moist::NTuple{5, NTuple{11, Cdouble}}
    slope::Cdouble
    aspect::Cdouble
    ehoriz::Cdouble
    whoriz::Cdouble
end

struct veg_con_struct
    albedo::NTuple{12, Cdouble}
    CanopLayerBnd::Ptr{Cdouble}
    Cv::Cdouble
    displacement::NTuple{12, Cdouble}
    fcanopy::NTuple{12, Cdouble}
    fetch::Cdouble
    LAI::NTuple{12, Cdouble}
    LAKE::Cint
    lag_one::Cdouble
    root::NTuple{3, Cdouble}
    roughness::NTuple{12, Cdouble}
    sigma_slope::Cdouble
    veg_class::Cint
    vegetat_type_num::Csize_t
    Wdmax::NTuple{12, Cdouble}
    zone_depth::Ptr{Cdouble}
    zone_fract::Ptr{Cdouble}
end

struct veg_lib_struct
    albedo::NTuple{12, Cdouble}
    displacement::NTuple{12, Cdouble}
    emissivity::NTuple{12, Cdouble}
    fcanopy::NTuple{12, Cdouble}
    LAI::NTuple{12, Cdouble}
    NVegLibTypes::Csize_t
    overstory::Bool
    max_snow_albedo::Cdouble
    rad_atten::Cdouble
    rarc::Cdouble
    rmin::Cdouble
    roughness::NTuple{12, Cdouble}
    trunk_ratio::Cdouble
    Wdmax::NTuple{12, Cdouble}
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

struct force_data_struct
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

struct dmy_struct
    day::Cushort
    day_in_year::Cushort
    month::Cushort
    year::Cint
    dayseconds::Cuint
end

struct layer_data_struct
    Cs::Cdouble
    T::Cdouble
    ice::NTuple{10, Cdouble}
    kappa::Cdouble
    moist::Cdouble
    phi::Cdouble
    zwt::Cdouble
    esoil::Cdouble
    evap::Cdouble
    transp::Cdouble
end

struct cell_data_struct
    aero_resist::NTuple{2, Cdouble}
    asat::Cdouble
    CLitter::Cdouble
    CInter::Cdouble
    CSlow::Cdouble
    layer::NTuple{3, layer_data_struct}
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
    Cs::NTuple{2, Cdouble}
    Cs_node::NTuple{50, Cdouble}
    fdepth::NTuple{3, Cdouble}
    frozen::Bool
    ice::NTuple{50, Cdouble}
    kappa::NTuple{2, Cdouble}
    kappa_node::NTuple{50, Cdouble}
    moist::NTuple{50, Cdouble}
    Nfrost::Csize_t
    Nthaw::Csize_t
    T::NTuple{50, Cdouble}
    T_fbflag::NTuple{50, Bool}
    T_fbcount::NTuple{50, Cuint}
    T1_index::Cint
    Tcanopy::Cdouble
    Tcanopy_fbflag::Bool
    Tcanopy_fbcount::Cuint
    tdepth::NTuple{3, Cdouble}
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
    numnod::Csize_t
    z::NTuple{21, Cdouble}
    basin::NTuple{21, Cdouble}
    Cl::NTuple{21, Cdouble}
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
    surface::NTuple{21, Cdouble}
    sarea::Cdouble
    sarea_save::Cdouble
    volume::Cdouble
    volume_save::Cdouble
    temp::NTuple{20, Cdouble}
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
    density::NTuple{20, Cdouble}
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

function assert_close_double(x::Cdouble, y::Cdouble, rtol::Cdouble, abs_tol::Cdouble)
    @ccall libvic5.assert_close_double(x::Cdouble, y::Cdouble, rtol::Cdouble, abs_tol::Cdouble)::Bool
end

function assert_close_float(x::Cfloat, y::Cfloat, rtol::Cfloat, abs_tol::Cfloat)
    @ccall libvic5.assert_close_float(x::Cfloat, y::Cfloat, rtol::Cfloat, abs_tol::Cfloat)::Bool
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

@cenum var"##Ctag#2157"::UInt32 begin
    UNSET_FILE_FORMAT = 0
    ASCII = 1
    BINARY = 2
    NETCDF3_CLASSIC = 3
    NETCDF3_64BIT_OFFSET = 4
    NETCDF4_CLASSIC = 5
    NETCDF4 = 6
end

@cenum var"##Ctag#2158"::UInt32 begin
    LITTLE = 0
    BIG = 1
end

@cenum var"##Ctag#2159"::UInt32 begin
    FROM_DEFAULT = 0
    FROM_VEGLIB = 1
    FROM_VEGPARAM = 2
    FROM_VEGHIST = 3
end

@cenum var"##Ctag#2160"::UInt32 begin
    AIR_TEMP = 0
    ALBEDO = 1
    CATM = 2
    CHANNEL_IN = 3
    FCANOPY = 4
    FDIR = 5
    LAI = 6
    LWDOWN = 7
    PAR = 8
    PREC = 9
    PRESSURE = 10
    VP = 11
    SWDOWN = 12
    WIND = 13
    SKIP = 14
    N_FORCING_TYPES = 15
end

@cenum var"##Ctag#2161"::UInt32 begin
    OUT_ASAT = 0
    OUT_LAKE_AREA_FRAC = 1
    OUT_LAKE_DEPTH = 2
    OUT_LAKE_ICE = 3
    OUT_LAKE_ICE_FRACT = 4
    OUT_LAKE_ICE_HEIGHT = 5
    OUT_LAKE_MOIST = 6
    OUT_LAKE_SURF_AREA = 7
    OUT_LAKE_SWE = 8
    OUT_LAKE_SWE_V = 9
    OUT_LAKE_VOLUME = 10
    OUT_ROOTMOIST = 11
    OUT_SMFROZFRAC = 12
    OUT_SMLIQFRAC = 13
    OUT_SNOW_CANOPY = 14
    OUT_SNOW_COVER = 15
    OUT_SNOW_DEPTH = 16
    OUT_SOIL_ICE = 17
    OUT_SOIL_LIQ = 18
    OUT_SOIL_ICE_FRAC = 19
    OUT_SOIL_LIQ_FRAC = 20
    OUT_SOIL_MOIST = 21
    OUT_SOIL_WET = 22
    OUT_SURFSTOR = 23
    OUT_SURF_FROST_FRAC = 24
    OUT_SWE = 25
    OUT_WDEW = 26
    OUT_ZWT = 27
    OUT_ZWT_LUMPED = 28
    OUT_BASEFLOW = 29
    OUT_DELINTERCEPT = 30
    OUT_DELSOILMOIST = 31
    OUT_DELSURFSTOR = 32
    OUT_DELSWE = 33
    OUT_DISCHARGE = 34
    OUT_EVAP = 35
    OUT_EVAP_BARE = 36
    OUT_EVAP_CANOP = 37
    OUT_INFLOW = 38
    OUT_LAKE_BF_IN = 39
    OUT_LAKE_BF_IN_V = 40
    OUT_LAKE_BF_OUT = 41
    OUT_LAKE_BF_OUT_V = 42
    OUT_LAKE_CHAN_IN = 43
    OUT_LAKE_CHAN_IN_V = 44
    OUT_LAKE_CHAN_OUT = 45
    OUT_LAKE_CHAN_OUT_V = 46
    OUT_LAKE_DSTOR = 47
    OUT_LAKE_DSTOR_V = 48
    OUT_LAKE_DSWE = 49
    OUT_LAKE_DSWE_V = 50
    OUT_LAKE_EVAP = 51
    OUT_LAKE_EVAP_V = 52
    OUT_LAKE_PREC_V = 53
    OUT_LAKE_RCHRG = 54
    OUT_LAKE_RCHRG_V = 55
    OUT_LAKE_RO_IN = 56
    OUT_LAKE_RO_IN_V = 57
    OUT_LAKE_VAPFLX = 58
    OUT_LAKE_VAPFLX_V = 59
    OUT_PET = 60
    OUT_PREC = 61
    OUT_RAINF = 62
    OUT_REFREEZE = 63
    OUT_RUNOFF = 64
    OUT_SNOW_MELT = 65
    OUT_SNOWF = 66
    OUT_SUB_BLOWING = 67
    OUT_SUB_CANOP = 68
    OUT_SUB_SNOW = 69
    OUT_SUB_SURFACE = 70
    OUT_TRANSP_VEG = 71
    OUT_WATER_ERROR = 72
    OUT_ALBEDO = 73
    OUT_BARESOILT = 74
    OUT_FDEPTH = 75
    OUT_LAKE_ICE_TEMP = 76
    OUT_LAKE_SURF_TEMP = 77
    OUT_RAD_TEMP = 78
    OUT_SALBEDO = 79
    OUT_SNOW_PACK_TEMP = 80
    OUT_SNOW_SURF_TEMP = 81
    OUT_SNOWT_FBFLAG = 82
    OUT_SOIL_TEMP = 83
    OUT_SOIL_TNODE = 84
    OUT_SOIL_TNODE_WL = 85
    OUT_SOILT_FBFLAG = 86
    OUT_SURF_TEMP = 87
    OUT_SURFT_FBFLAG = 88
    OUT_TCAN_FBFLAG = 89
    OUT_TDEPTH = 90
    OUT_TFOL_FBFLAG = 91
    OUT_VEGT = 92
    OUT_ADV_SENS = 93
    OUT_ADVECTION = 94
    OUT_DELTACC = 95
    OUT_DELTAH = 96
    OUT_ENERGY_ERROR = 97
    OUT_FUSION = 98
    OUT_GRND_FLUX = 99
    OUT_IN_LONG = 100
    OUT_LATENT = 101
    OUT_LATENT_SUB = 102
    OUT_MELT_ENERGY = 103
    OUT_LWNET = 104
    OUT_SWNET = 105
    OUT_R_NET = 106
    OUT_RFRZ_ENERGY = 107
    OUT_SENSIBLE = 108
    OUT_SNOW_FLUX = 109
    OUT_AERO_COND = 110
    OUT_AERO_COND1 = 111
    OUT_AERO_COND2 = 112
    OUT_AERO_RESIST = 113
    OUT_AERO_RESIST1 = 114
    OUT_AERO_RESIST2 = 115
    OUT_AIR_TEMP = 116
    OUT_CATM = 117
    OUT_DENSITY = 118
    OUT_FCANOPY = 119
    OUT_FDIR = 120
    OUT_LAI = 121
    OUT_LWDOWN = 122
    OUT_PAR = 123
    OUT_PRESSURE = 124
    OUT_QAIR = 125
    OUT_REL_HUMID = 126
    OUT_SWDOWN = 127
    OUT_SURF_COND = 128
    OUT_VP = 129
    OUT_VPD = 130
    OUT_WIND = 131
    OUT_ADV_SENS_BAND = 132
    OUT_ADVECTION_BAND = 133
    OUT_ALBEDO_BAND = 134
    OUT_DELTACC_BAND = 135
    OUT_GRND_FLUX_BAND = 136
    OUT_IN_LONG_BAND = 137
    OUT_LATENT_BAND = 138
    OUT_LATENT_SUB_BAND = 139
    OUT_MELT_ENERGY_BAND = 140
    OUT_LWNET_BAND = 141
    OUT_SWNET_BAND = 142
    OUT_RFRZ_ENERGY_BAND = 143
    OUT_SENSIBLE_BAND = 144
    OUT_SNOW_CANOPY_BAND = 145
    OUT_SNOW_COVER_BAND = 146
    OUT_SNOW_DEPTH_BAND = 147
    OUT_SNOW_FLUX_BAND = 148
    OUT_SNOW_MELT_BAND = 149
    OUT_SNOW_PACKT_BAND = 150
    OUT_SNOW_SURFT_BAND = 151
    OUT_SWE_BAND = 152
    OUT_APAR = 153
    OUT_GPP = 154
    OUT_RAUT = 155
    OUT_NPP = 156
    OUT_LITTERFALL = 157
    OUT_RHET = 158
    OUT_NEE = 159
    OUT_CLITTER = 160
    OUT_CINTER = 161
    OUT_CSLOW = 162
    OUT_TIME_VICRUN_WALL = 163
    OUT_TIME_VICRUN_CPU = 164
    N_OUTVAR_TYPES = 165
end

@cenum var"##Ctag#2162"::UInt32 begin
    STATE_SOIL_MOISTURE = 0
    STATE_SOIL_ICE = 1
    STATE_CANOPY_WATER = 2
    STATE_ANNUALNPP = 3
    STATE_ANNUALNPPPREV = 4
    STATE_CLITTER = 5
    STATE_CINTER = 6
    STATE_CSLOW = 7
    STATE_SNOW_AGE = 8
    STATE_SNOW_MELT_STATE = 9
    STATE_SNOW_COVERAGE = 10
    STATE_SNOW_WATER_EQUIVALENT = 11
    STATE_SNOW_SURF_TEMP = 12
    STATE_SNOW_SURF_WATER = 13
    STATE_SNOW_PACK_TEMP = 14
    STATE_SNOW_PACK_WATER = 15
    STATE_SNOW_DENSITY = 16
    STATE_SNOW_COLD_CONTENT = 17
    STATE_SNOW_CANOPY = 18
    STATE_SOIL_NODE_TEMP = 19
    STATE_FOLIAGE_TEMPERATURE = 20
    STATE_ENERGY_LONGUNDEROUT = 21
    STATE_ENERGY_SNOW_FLUX = 22
    STATE_LAKE_SOIL_MOISTURE = 23
    STATE_LAKE_SOIL_ICE = 24
    STATE_LAKE_CLITTER = 25
    STATE_LAKE_CINTER = 26
    STATE_LAKE_CSLOW = 27
    STATE_LAKE_SNOW_AGE = 28
    STATE_LAKE_SNOW_MELT_STATE = 29
    STATE_LAKE_SNOW_COVERAGE = 30
    STATE_LAKE_SNOW_WATER_EQUIVALENT = 31
    STATE_LAKE_SNOW_SURF_TEMP = 32
    STATE_LAKE_SNOW_SURF_WATER = 33
    STATE_LAKE_SNOW_PACK_TEMP = 34
    STATE_LAKE_SNOW_PACK_WATER = 35
    STATE_LAKE_SNOW_DENSITY = 36
    STATE_LAKE_SNOW_COLD_CONTENT = 37
    STATE_LAKE_SNOW_CANOPY = 38
    STATE_LAKE_SOIL_NODE_TEMP = 39
    STATE_LAKE_ACTIVE_LAYERS = 40
    STATE_LAKE_LAYER_DZ = 41
    STATE_LAKE_SURF_LAYER_DZ = 42
    STATE_LAKE_DEPTH = 43
    STATE_LAKE_LAYER_SURF_AREA = 44
    STATE_LAKE_SURF_AREA = 45
    STATE_LAKE_VOLUME = 46
    STATE_LAKE_LAYER_TEMP = 47
    STATE_LAKE_AVERAGE_TEMP = 48
    STATE_LAKE_ICE_AREA_FRAC = 49
    STATE_LAKE_ICE_AREA_FRAC_NEW = 50
    STATE_LAKE_ICE_WATER_EQUIVALENT = 51
    STATE_LAKE_ICE_HEIGHT = 52
    STATE_LAKE_ICE_TEMP = 53
    STATE_LAKE_ICE_SWE = 54
    STATE_LAKE_ICE_SNOW_SURF_TEMP = 55
    STATE_LAKE_ICE_SNOW_PACK_TEMP = 56
    STATE_LAKE_ICE_SNOW_COLD_CONTENT = 57
    STATE_LAKE_ICE_SNOW_SURF_WATER = 58
    STATE_LAKE_ICE_SNOW_PACK_WATER = 59
    STATE_LAKE_ICE_SNOW_ALBEDO = 60
    STATE_LAKE_ICE_SNOW_DEPTH = 61
    STATE_AVG_ALBEDO = 62
    N_STATE_VARS = 63
end

@cenum var"##Ctag#2163"::UInt32 begin
    OUT_TYPE_DEFAULT = 0
    OUT_TYPE_CHAR = 1
    OUT_TYPE_SINT = 2
    OUT_TYPE_USINT = 3
    OUT_TYPE_INT = 4
    OUT_TYPE_FLOAT = 5
    OUT_TYPE_DOUBLE = 6
end

@cenum var"##Ctag#2164"::UInt32 begin
    AGG_TYPE_DEFAULT = 0
    AGG_TYPE_AVG = 1
    AGG_TYPE_BEG = 2
    AGG_TYPE_END = 3
    AGG_TYPE_MAX = 4
    AGG_TYPE_MIN = 5
    AGG_TYPE_SUM = 6
end

@cenum var"##Ctag#2165"::UInt32 begin
    FREQ_NEVER = 0
    FREQ_NSTEPS = 1
    FREQ_NSECONDS = 2
    FREQ_NMINUTES = 3
    FREQ_NHOURS = 4
    FREQ_NDAYS = 5
    FREQ_NMONTHS = 6
    FREQ_NYEARS = 7
    FREQ_DATE = 8
    FREQ_END = 9
end

@cenum var"##Ctag#2166"::UInt32 begin
    DISP_VERSION = 0
    DISP_COMPILE_TIME = 1
    DISP_ALL = 2
end

@cenum calendars::UInt32 begin
    CALENDAR_STANDARD = 0
    CALENDAR_GREGORIAN = 1
    CALENDAR_PROLEPTIC_GREGORIAN = 2
    CALENDAR_NOLEAP = 3
    CALENDAR_365_DAY = 4
    CALENDAR_360_DAY = 5
    CALENDAR_JULIAN = 6
    CALENDAR_ALL_LEAP = 7
    CALENDAR_366_DAY = 8
end

@cenum time_units::UInt32 begin
    TIME_UNITS_SECONDS = 0
    TIME_UNITS_MINUTES = 1
    TIME_UNITS_HOURS = 2
    TIME_UNITS_DAYS = 3
end

@cenum timers::UInt32 begin
    TIMER_VIC_ALL = 0
    TIMER_VIC_INIT = 1
    TIMER_VIC_RUN = 2
    TIMER_VIC_FINAL = 3
    TIMER_VIC_FORCE = 4
    TIMER_VIC_WRITE = 5
    N_TIMERS = 6
end

struct force_type_struct
    N_ELEM::Csize_t
    SIGNED::Bool
    SUPPLIED::Bool
    multiplier::Cdouble
    varname::NTuple{2048, Cchar}
end

struct param_set_struct
    TYPE::NTuple{15, force_type_struct}
    FORCE_DT::NTuple{2, Cdouble}
    force_steps_per_day::NTuple{2, Csize_t}
    FORCE_ENDIAN::NTuple{2, Cushort}
    FORCE_FORMAT::NTuple{2, Cint}
    FORCE_INDEX::NTuple{2, NTuple{15, Cint}}
    N_TYPES::NTuple{2, Csize_t}
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
    nvars::Csize_t
    ngridcells::Csize_t
    time_bounds::NTuple{2, dmy_struct}
    prefix::NTuple{2048, Cchar}
    filename::NTuple{2048, Cchar}
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
    varname::NTuple{2048, Cchar}
    long_name::NTuple{2048, Cchar}
    standard_name::NTuple{2048, Cchar}
    units::NTuple{2048, Cchar}
    description::NTuple{2048, Cchar}
    nelem::Csize_t
end

struct Error_struct
    force::Ptr{force_data_struct}
    dt::Cdouble
    energy::Ptr{energy_bal_struct}
    rec::Csize_t
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

function get_parameters(paramfile)
    @ccall libvic5.get_parameters(paramfile::Ptr{Libc.FILE})::Cvoid
end

function init_output_list(out_data, write::Cint, format, type::Cint, mult::Cdouble)
    @ccall libvic5.init_output_list(out_data::Ptr{Ptr{Cdouble}}, write::Cint, format::Cstring, type::Cint, mult::Cdouble)::Cvoid
end

function initialize_energy(energy, nveg::Csize_t)
    @ccall libvic5.initialize_energy(energy::Ptr{Ptr{energy_bal_struct}}, nveg::Csize_t)::Cvoid
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

function print_out_data(out_data, metadata)
    @ccall libvic5.print_out_data(out_data::Ptr{Ptr{Cdouble}}, metadata::Ptr{metadata_struct})::Cvoid
end

function print_out_metadata(metadata, nvars::Csize_t)
    @ccall libvic5.print_out_metadata(metadata::Ptr{metadata_struct}, nvars::Csize_t)::Cvoid
end

function print_output_streams(outf)
    @ccall libvic5.print_output_streams(outf::Ptr{stream_struct})::Cvoid
end

function print_param_set(param_set)
    @ccall libvic5.print_param_set(param_set::Ptr{param_set_struct})::Cvoid
end

function print_parameters(param)
    @ccall libvic5.print_parameters(param::Ptr{parameters_struct})::Cvoid
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

function print_version(arg1)
    @ccall libvic5.print_version(arg1::Cstring)::Cvoid
end

function print_usage(arg1)
    @ccall libvic5.print_usage(arg1::Cstring)::Cvoid
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

struct filep_struct
    forcing::NTuple{2, Ptr{Libc.FILE}}
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

struct filenames_struct
    forcing::NTuple{2, NTuple{2048, Cchar}}
    f_path_pfx::NTuple{2, NTuple{2048, Cchar}}
    _global::NTuple{2048, Cchar}
    constants::NTuple{2048, Cchar}
    init_state::NTuple{2048, Cchar}
    lakeparam::NTuple{2048, Cchar}
    result_dir::NTuple{2048, Cchar}
    snowband::NTuple{2048, Cchar}
    soil::NTuple{2048, Cchar}
    statefile::NTuple{2048, Cchar}
    veg::NTuple{2048, Cchar}
    veglib::NTuple{2048, Cchar}
    log_path::NTuple{2048, Cchar}
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

const DAYS_PER_360DAY_YEAR = 360

const DAYS_PER_YEAR = 365

const DAYS_PER_LYEAR = 366

const DAYS_PER_JYEAR = 365.25

const HOURS_PER_DAY = 24

const MONTHS_PER_YEAR = 12

const MIN_PER_HOUR = 60

const MIN_PER_DAY = MIN_PER_HOUR * HOURS_PER_DAY

const SEC_PER_MIN = 60

const SEC_PER_HOUR = SEC_PER_MIN * MIN_PER_HOUR

const SEC_PER_DAY = SEC_PER_HOUR * HOURS_PER_DAY

const JOULES_PER_CAL = 4.1868

const GRAMS_PER_KG = 1000

const PA_PER_KPA = 1000

const BAR_PER_KPA = 100

const RAD_PER_DEG = 0.0174532925

const M_PER_KM = 1000

const MM_PER_M = 1000

const CM_PER_M = 100

const MM_PER_CM = 10

const MM_PER_IN = 25.4

const IN_PER_M = MM_PER_M ÷ MM_PER_IN

const MOLE_PER_KMOLE = 1000

const FRACT_TO_PERCENT = 100

const PPM_to_MIXRATIO = 1.0e-6

const CONST_PI = 3.141592653589793

const CONST_CDAY = 86400

const CONST_SDAY = 86164

const CONST_DDAYS_PER_YEAR = 365.2425

const CONST_OMEGA = (2.0CONST_PI) ÷ CONST_SDAY

const CONST_SECPERRAD = 13750.9871

const CONST_RADPERDAY = 0.017214

const CONST_RADPERDEG = 0.01745329

const CONST_MINDECL = -0.4092797

const CONST_DAYSOFF = 11.25

const CONST_REARTH = 6.37122e6

const CONST_G = 9.80616

const CONST_STEBOL = 5.67e-8

const CONST_BOLTZ = 1.38065e-23

const CONST_AVOGAD = 6.02214e26

const CONST_KARMAN = 0.4

const CONST_MWDAIR = 28.966

const CONST_MWWV = 18.016

const CONST_MWCO2 = 44.011

const CONST_MWAIR = 28.97

const CONST_MWC = 12.01

const CONST_RGAS = CONST_AVOGAD * CONST_BOLTZ

const CONST_RDAIR = CONST_RGAS ÷ CONST_MWDAIR

const CONST_RWV = CONST_RGAS ÷ CONST_MWWV

const CONST_EPS = CONST_MWWV ÷ CONST_MWAIR

const CONST_TKTRIP = 273.16

const CONST_TKFRZ = 273.15

const CONST_PSTD = 101325.0

const CONST_TSTD = CONST_TKFRZ + 15.0

const CONST_RHODAIR = CONST_PSTD ÷ (CONST_RDAIR * CONST_TKFRZ)

const CONST_RHOFW = 1000.0

const CONST_RHOICE = 917.0

const CONST_CPDAIR = 1004.64

const CONST_CPMAIR = 1013.0

const CONST_CPWV = 1810.0

const CONST_CPFW = 4188.0

const CONST_CPFWICE = 4200.0

const CONST_CPICE = 2117.27

const CONST_VCPICE_WQ = CONST_CPICE * CONST_RHOFW

const CONST_LATICE = 333700.0

const CONST_LATVAP = 2.501e6

const CONST_LATSUB = CONST_LATICE + CONST_LATVAP

const CONST_SPVAL = 1.0e30

const LOG_LVL = 25

const MAXSTRING = 2048

const MISSING = -99999.0

const MISSING_USI = 99999.0

const MISSING_S = "MISSING"

const NODATA_VH = -1

const NODATA_VEG = -1

const ERROR = -999

const MAX_LAYERS = 3

const MAX_NODES = 50

const MAX_FRONTS = 3

const MAX_FROST_AREAS = 10

const MAX_LAKE_BASIN_NODES = 20

const MAX_LAKE_NODES = 20

const MAX_ZWTVMOIST = 11

const MINSOILDEPTH = 0.001

const MIN_FCANOPY = 0.0001

const MIN_SNOW_WETFRAC = 0.01

const MIN_SUBDAILY_STEPS_PER_DAY = 4

const MAX_SUBDAILY_STEPS_PER_DAY = 1440

const WET = 0

const DRY = 1

const RAIN = 0

const SNOW = 1

const VERSION = "5.0.1 February 1, 2017"

const SHORT_VERSION = "5.0.1"

const GIT_VERSION = "unset"

const USERNAME = "unset"

const HOSTNAME = "unset"

const BUILD_DATE = __DATE__

const BUILD_TIME = __TIME__

const COMPILER = "clang"

const COMPILER_VERSION = __clang_version__

const CSTANDARD = __STDC_VERSION__

const PLATFORM = "LINUX"

const MAX_FORCE_FILES = 2

const MAX_OUTPUT_STREAMS = 20

const COMPRESSION_LVL_UNSET = -1

const COMPRESSION_LVL_DEFAULT = 5

const OUT_MULT_DEFAULT = 0

const OUT_ASCII_FORMAT_DEFAULT = "%.4f"

const SNOW_BAND_TRUE_BUT_UNSET = 99999

const MAX_ROOT_ITER = 9999

const VIC_DRIVER = "Classic"

const BINHEADERSIZE = 256

const MAX_VEGPARAM_LINE_LENGTH = 500

const ASCII_STATE_FLOAT_FMT = "%.16g"

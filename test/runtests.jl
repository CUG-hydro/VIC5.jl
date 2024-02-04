using Test
using VIC5

initialize_parameters()

include("test_advected_sensible_heat.jl")
include("test_advected_sensible_heat.jl")
include("test_CalcAerodynamic.jl")
include("test_calc_atmos_energy_bal.jl")
include("test_calc_Nscale_factors.jl")
include("test_calc_rainonly.jl")
include("test_calc_snow_coverage.jl")
include("test_calc_veg_params.jl")
include("test_correct_precip.jl")
include("test_estimate_T1.jl")
include("test_linear_interp.jl")
include("test_photosynth.jl")
include("test_physics.jl")
include("test_StabilityCorrection.jl")
include("test_svp.jl")

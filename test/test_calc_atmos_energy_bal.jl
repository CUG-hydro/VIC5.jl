init_dbl() = Ref(0.0)

@testset "calc_atmos_energy_bal" begin

  # note that this test uses default options
  in_over_sensible = 15.0  # (double)
  in_under_sensible = 5.0  # (double)
  latent_heat_over = 15.0  # (double)
  latent_heat_under = 5.0  # (double)
  latent_heat_sub_over = 5.0  # (double)
  latent_heat_sub_under = 1.0  # (double)
  net_long_over = 50.0  # (double)
  net_long_under = 30.0  # (double)
  net_short_over = 0.0  # (double)
  net_short_under = 0.0  # (double)
  r_a = 500.0  # (double)
  t_air = 2.0  # (double)
  atmos_density = 1.225  # (double)

  error = init_dbl()
  latent_heat = init_dbl()
  latent_heat_sub = init_dbl()
  net_long_atmos = init_dbl()
  net_short_atmos = init_dbl()
  sensible_heat = init_dbl()
  tcanopy_fbflag = Ref(false)
  tcanopy_fbcount = Ref(Cuint(0))

  calc_atmos_energy_bal(in_over_sensible,
    in_under_sensible,
    latent_heat_over,
    latent_heat_under,
    latent_heat_sub_over,
    latent_heat_sub_under,
    net_long_over,
    net_long_under,
    net_short_over,
    net_short_under,
    r_a,
    t_air,
    atmos_density,
    error,
    latent_heat,
    latent_heat_sub,
    net_long_atmos,
    net_short_atmos,
    sensible_heat,
    tcanopy_fbflag,
    tcanopy_fbcount)

  @test error[] != 0.0
  @test latent_heat[] != 0.0
  @test latent_heat_sub[] != 0.0
  @test net_long_atmos[] != 0.0
  @test net_short_atmos[] == 0.0
  @test sensible_heat[] == 0.0
  @test !tcanopy_fbflag[]
  @test tcanopy_fbcount[] == 0.0
end

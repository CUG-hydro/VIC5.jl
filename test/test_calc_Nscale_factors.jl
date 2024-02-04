# test_
@testset "calc_nscale_factor" begin
  canopy_layer_bnd = ones(3)
  nscale_factor = zeros(3)
  flag = true
  @test_nowarn calc_Nscale_factors(flag, canopy_layer_bnd, 3.0, 0.5, nscale_factor)
end

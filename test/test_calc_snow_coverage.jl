@testset "calc_snow_coverage_no_change" begin
  store_snow = Ref(false)
  max_snow_depth = Ref(0.0)
  store_swq = Ref(0.0)
  snow_distrib_slope = Ref(0.0)
  store_coverage = Ref(0.0)
  old_coverage = 0.75

  coverage = calc_snow_coverage(
    store_snow, 0.5, old_coverage, 1.25, 1.25, 2.3, 2.3, 0.0,
    max_snow_depth, 0.0, store_swq, snow_distrib_slope, store_coverage)
  @test coverage == old_coverage
end


@testset "calc_snow_coverage_increased" begin
  store_snow = Ref(true)
  max_snow_depth = Ref(3.0)
  store_swq = Ref(0.5)
  snow_distrib_slope = Ref(0.5)
  store_coverage = Ref(0.75)
  old_coverage = 0.75

  coverage = calc_snow_coverage(
    store_snow, 0.5, old_coverage, 1.25, 1.5, 2.3, 3.0, 0.0, max_snow_depth,
    0.25, store_swq, snow_distrib_slope, store_coverage)
  @test coverage > old_coverage
end

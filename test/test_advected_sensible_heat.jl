using Test


@testset "advected_sensible_heat" begin
  # negative when soil temperature is less than air temperature
  @test advected_sensible_heat(0.5, 1.225, -3.0, 0.5, 1000.0) < 0
  @test advected_sensible_heat(0.5, 1.225, -3.0, -1.0, 1000.0) < 0
  # positive when soil temperature is g.t. air temperature
  @test advected_sensible_heat(0.5, 1.225, 3.0, 0.0, 1000.0) > 0
  # zero when soil and air temp is the same
  @test advected_sensible_heat(0.5, 1.225, 3.0, 3.0, 1000.0) == 0.0
  # zero when snow coverage is 1
  @test advected_sensible_heat(1.0, 1.225, 3.0, 0.0, 1000.0) == 0.0
  # .inf when snow coverage is 0
  @test advected_sensible_heat(0.0, 1.225, 3.0, 0.0, 1000.0) == Inf
end

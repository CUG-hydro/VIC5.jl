@testset "rainonly" begin
  @test calc_rainonly(0.0, 4.0, 1.0, -1.0) == 2.0  # 50/50 split
  @test calc_rainonly(3.0, 4.0, 1.0, -1.0) == 4.0  # all rain
  @test calc_rainonly(-2.0, 4.0, 1.0, -1.0) == 0.0  # no rain
end

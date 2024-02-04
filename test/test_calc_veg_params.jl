


# deftest_calc_veg_displacement():
    @test calc_veg_displacement(0.) == 0.
    @test calc_veg_displacement(10.) < 6.8


# deftest_calc_veg_height():
    @test calc_veg_height(0.) == 0.
    @test calc_veg_height(10.) > 10.


# deftest_calc_veg_roughness():
    @test calc_veg_roughness(0.) == 0.
    @test calc_veg_roughness(10.) < 10.

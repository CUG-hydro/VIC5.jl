# TODO: Include physical constants in library
JOULES_PER_CAL = 4.1868
GRAMS_PER_KG = 1000
CONST_LATVAP = 2.501e6


# deftest_calc_latent_heat_of_sublimation():
ls0 = calc_latent_heat_of_sublimation(0.0)
@test ls0 == (677.0 * JOULES_PER_CAL * GRAMS_PER_KG)
ls20 = calc_latent_heat_of_sublimation(20.0)
@test ls20 < ls0


# deftest_calc_latent_heat_of_vaporization():
lv0 = calc_latent_heat_of_vaporization(0.)
@test lv0 == CONST_LATVAP
lv20 = calc_latent_heat_of_vaporization(20.)
@test lv20 < lv0


# deftest_calc_outgoing_longwave():
lwout273_1e = calc_outgoing_longwave(273.0, 1.0)
@test lwout273_1e > 0.0
lwout273_97e = calc_outgoing_longwave(273.0, 0.97)
@test lwout273_97e < lwout273_1e
lwout273_97e ≈ lwout273_1e * 0.97


# deftest_calc_scale_height():
h00 = calc_scale_height(0.0, 0.0)
@test h00 > 0.0
h90 = calc_scale_height(9.0, 0.0)
@test h90 > h00
h09 = calc_scale_height(0.0, 9.0)
@test h09 < h00


# deftest_calc_sensible_heat():
@test calc_sensible_heat(2.75, 0.0, 1.0, 100.) < 0.0
@test calc_sensible_heat(2.75, 0.0, 0.0, 100.) == 0.0
@test calc_sensible_heat(2.75, 1.0, 0.0, 100.) > 0.0

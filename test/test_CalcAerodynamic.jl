# deftest_calc_aerodynamic():


r_a = zeros(3)
u = zeros(3)
displacement = zeros(3)
ref_height = zeros(3)
roughness = zeros(3)

@test CalcAerodynamic(
  true, 40.0, 0.2, 0.0005, 0.001, 0.5,
  r_a, u, displacement, ref_height, roughness) == 0.0

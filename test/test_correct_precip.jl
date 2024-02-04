# from vic.vic import ffi


# TODO: include compile time constants to lib (requires enum in vic_def.h)
RAIN = 1
SNOW = 2


# deftest_correct_precip():
guage_correction = zeros(2)

@test correct_precip(guage_correction, 4.0, 2.0, 0.4, 0.005) === nothing

@test guage_correction[SNOW] > 1.0
@test guage_correction[RAIN] > 1.0
@test guage_correction[SNOW] > guage_correction[RAIN]

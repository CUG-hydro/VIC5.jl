# from vic import VIC_DRIVER

# from vic.pycompat import pylong


print_version()

# deftest_set_global_scalars():
# deftest_globals_are_initialized():
@test global_param.atmos_dt[] == -99999.0
@test options.AboveTreelineVeg[] == -1
@test param.LAPSE_RATE[] == -0.0065

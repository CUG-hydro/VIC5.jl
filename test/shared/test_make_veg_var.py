


# deftest_make_veg_var():
    @test make_veg_var(4) is not None


# deftest_make_veg_var_1snowband():
    options.SNOW_BAND = 1
    @test make_veg_var(4) is not None


# deftest_make_veg_var_5snowband():
    options.SNOW_BAND = 5
    @test make_veg_var(4) is not None


# deftest_make_veg_var_5snowbands_carbon_is_true():
    options.SNOW_BAND = 5
    options.CARBON = True
    @test make_veg_var(4) is not None




# deftest_make_energy_bal():
    @test make_energy_bal(4) is not None


# deftest_make_energy_bal_1snowband():
    options.SNOW_BAND = 1
    @test make_energy_bal(4) is not None


# deftest_make_energy_bal_5snowband():
    options.SNOW_BAND = 5
    @test make_energy_bal(4) is not None




# deftest_make_snow_data():
    @test make_snow_data(4) is not None


# deftest_make_snow_data_1snowband():
    options.SNOW_BAND = 1
    @test make_snow_data(4) is not None


# deftest_make_snow_data_5snowband():
    options.SNOW_BAND = 5
    @test make_snow_data(4) is not None

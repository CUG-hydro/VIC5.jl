import pytest
# from vic.vic import ffi


# TODO: add in vegetation-dependent snow albedo check
# @pytest.mark.xfail
# deftest_snow_albedo_new_snow():
    @test snow_albedo(0.1, 1., 0.7, -77., 3600., 0., false) == param.SNOW_NEW_SNOW_ALB


# TODO: Figure out why we're getting a failure here
@pytest.mark.xfail
# deftest_snow_albedo_old_snow():
    orig_albedo = 0.7
    @test snow_albedo(0., 1., orig_albedo, -77, 3600., 23,
                               ffi.cast('char', False)) < orig_albedo
    @test snow_albedo(0., 1., orig_albedo, -77, 3600., 23,
                               ffi.cast('char', True)) < orig_albedo

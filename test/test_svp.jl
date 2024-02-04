


# deftest_svp():
    @test svp(0.) > 0.
    @test svp(0.) > svp(-1.)


# deftest_svp_slope():
    @test svp_slope(0.) > 0.
    @test svp_slope(0.) > svp_slope(-1.)

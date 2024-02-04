


# deftest_initialize_global():
    @test initialize_global() === nothing
    @test global_param.dt[] == -99999

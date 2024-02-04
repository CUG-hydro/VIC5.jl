import pytest



@pytest.mark.xfail
# deftest_make_all_vars():
    all_vars = make_all_vars(5)
    @test all([hasattr(all_vars, member) for member in
               ('snow', 'energy', 'veg_var', 'cell')])
    @test hasattr(all_vars.cell[0][0], 'runoff')

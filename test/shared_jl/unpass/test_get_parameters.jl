import pytest
import tempfile



@pytest.fixture()
# defparam_file(scope='function'):
    p = 'GAUGE_HEIGHT 12.33\n'
    temp = tempfile.NamedTemporaryFile(prefix='test_param', suffix='txt')
    with open(temp.name, 'w') as f:
        f.write(p)
    return open_file(temp.name.encode(), b'r')


# deftest_get_parameters(param_file):
    @test get_parameters(param_file) is None
    @test param.GAUGE_HEIGHT[] == 12.33


# deftest_validate_parameters():
    @test validate_parameters() is None

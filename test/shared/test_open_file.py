import pytest
import tempfile



@pytest.fixture()
# deftemp_file(scope='module'):
    temp = tempfile.NamedTemporaryFile(prefix='test_file', suffix='txt',
                                       delete=False)
    return temp.name.encode()


# deftest_open_file_read(temp_file):
    print(temp_file)
    @test open_file(temp_file, b'r') is not None


# deftest_open_file_write(temp_file):
    @test open_file(temp_file, b'w') is not None

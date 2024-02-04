import datetime

# from vic import ffi


# deftest_finalize_logging():
    @test finalize_logging() is None


# deftest_get_current_datetime():
    dts = ffi.new('char [2048]')
    @test len(ffi.string(dts)) == 0
    get_current_datetime(dts)
    @test len(ffi.string(dts)) == 14
    now = datetime.datetime.now()
    now_string = now.strftime('%Y%m%d')
    @test now_string == ffi.string(dts)[:8].decode()


# deftest_get_logname():
    path = ffi.new('char [2048]', b'foobar/')
    idnum = 3
    filename = ffi.new('char [2048]')
    print([type(o) for o in (path, idnum, filename)])
    @test get_logname(path, idnum, filename) is None
    print(ffi.string(filename))
    @test len(ffi.string(filename)) > 0


# deftest_initialize_log():
    @test initialize_log() is None




# deftest_str_to_bool():
    for s, expected in [('TRUE', True), ('FALSE', False),
                        ('true', True), ('false', False),
                        ('TrUe', True), ('FaLsE', False)]:
        @test str_to_bool(s.encode()) == expected


# deftest_str_to_agg_type():
    @test str_to_agg_type(''.encode()) == AGG_TYPE_DEFAULT
    @test str_to_agg_type('*'.encode()) == AGG_TYPE_DEFAULT
    for s in ['AGG_TYPE_AVG', 'AGG_TYPE_BEG', 'AGG_TYPE_END',
              'AGG_TYPE_MAX', 'AGG_TYPE_MIN', 'AGG_TYPE_SUM']:
        expected = getattr( s)
        @test str_to_agg_type(s.encode()) == expected
        @test str_to_agg_type(s.lower().encode()) == expected


# deftest_str_to_out_type():
    @test str_to_out_type(''.encode()) == OUT_TYPE_DEFAULT
    @test str_to_out_type('*'.encode()) == OUT_TYPE_DEFAULT
    for s in ['OUT_TYPE_USINT', 'OUT_TYPE_SINT', 'OUT_TYPE_FLOAT',
              'OUT_TYPE_DOUBLE']:
        expected = getattr( s)
        @test str_to_out_type(s.encode()) == expected
        @test str_to_out_type(s.lower().encode()) == expected


# deftest_str_to_out_mult():
    @test str_to_out_mult(''.encode()) == 0
    @test str_to_out_mult('*'.encode()) == 0
    for mult in range(0, 10000, 100):
        @test str_to_out_mult(str(mult).encode()) == float(mult)


# deftest_str_to_freq_flag():
    for s in ['NEVER', 'NSTEPS', 'NSECONDS', 'NMINUTES', 'NHOURS', 'NDAYS',
              'NMONTHS', 'NYEARS', 'DATE', 'END']:
        expected = getattr( 'FREQ_{}'.format(s))
        @test str_to_freq_flag(s.encode()) == expected
        @test str_to_freq_flag(s.lower().encode()) == expected


# deftest_str_to_ascii_format():
    # TODO: figure out the best way to pass a mutable string to ffi
    pass


# deftest_str_to_calendar():
    for s in ['STANDARD', 'GREGORIAN', 'PROLEPTIC_GREGORIAN', 'NOLEAP',
              '365_DAY', '360_DAY', 'JULIAN', 'ALL_LEAP', '366_DAY']:
        expected = getattr( 'CALENDAR_{}'.format(s))
        @test str_to_calendar(s.encode()) == expected
        @test str_to_calendar(s.lower().encode()) == expected
    # NOLEAP calendar has an alternate spelling
    # s = 'CALENDAR_NO_LEAP'
    # @test str_to_calendar(s.encode()) == CALENDAR_NOLEAP
    # @test str_to_calendar(s.lower().encode()) == CALENDAR_NOLEAP


# deftest_str_to_timeunits():
    for s in ['SECONDS', 'MINUTES', 'HOURS', 'DAYS']:
        expected = getattr( 'TIME_UNITS_{}'.format(s))
        @test str_to_timeunits(s.encode()) == expected
        @test str_to_timeunits(s.lower().encode()) == expected


# deftest_str_from_time_units():
    # TODO: figure out the best way to pass a mutable string to ffi
    pass


# deftest_str_from_calendar():
    # TODO: figure out the best way to pass a mutable string to ffi
    pass


# deftest_cell_method_from_agg_type():
    # TODO: figure out the best way to pass a mutable string to ffi
    pass

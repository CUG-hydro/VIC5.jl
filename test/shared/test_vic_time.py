import pytest
import datetime
import calendar
import numpy as np
import pandas as pd
# from vic.vic import ffi


try:
    from netcdftime import (netcdftime, utime, JulianDayFromDate)
    from netcdftime.netcdftime import (_NoLeapDayFromDate,
                                       _AllLeapFromDate, _360DayFromDate)
    nctime_unavailable = False
    nc_reason = 'installed'
except ImportError:
    nctime_unavailable = True
    nc_reason = 'netCDF4.netcdftime not available'


calendars = {'standard': CALENDAR_STANDARD,
             'gregorian': CALENDAR_GREGORIAN,
             'proleptic_gregorian': CALENDAR_PROLEPTIC_GREGORIAN,
             'noleap': CALENDAR_NOLEAP,
             'julian': CALENDAR_JULIAN,
             'all_leap': CALENDAR_ALL_LEAP,
             '365_day': CALENDAR_365_DAY,
             '366_day': CALENDAR_366_DAY,
             '360_day': CALENDAR_360_DAY}

units = {'days': TIME_UNITS_DAYS,
         'hours': TIME_UNITS_HOURS,
         'minutes': TIME_UNITS_MINUTES,
         'seconds': TIME_UNITS_SECONDS}


freqs = {'never': FREQ_NEVER,
         'steps': FREQ_NSTEPS,
         'seconds': FREQ_NSECONDS,
         'minutes': FREQ_NMINUTES,
         'hours': FREQ_NHOURS,
         'days': FREQ_NDAYS,
         'months': FREQ_NMONTHS,
         'years': FREQ_NYEARS,
         'date': FREQ_DATE,
         'end': FREQ_END}

vic_default_units = 'days since 0001-01-01'


# defdatetime_to_dmy(dt):
    dmy = ffi.new('dmy_struct *')
    dmy[0].year = dt.year
    dmy[0].month = dt.month
    dmy[0].day = dt.day
    dmy[0].dayseconds = int(dt.hour * 3600 + dt.minute * 60 + dt.second +
                            dt.microsecond / 100000)
    dmy[0].day_in_year = dt.timetuple().tm_yday
    return dmy


# defdmy_to_datetime(dmy):
    day = datetime.datetime(dmy[0].year, dmy[0].month, dmy[0].day)
    td = datetime.timedelta(seconds=dmy[0].dayseconds)
    return day + td


@pytest.fixture()
# deffeb3_noon(scope='module'):
    return datetime.datetime(2015, 2, 3, 12)


@pytest.fixture()
# defdmy_feb_3_noon(feb3_noon, scope='module'):
    return datetime_to_dmy(feb3_noon)


@pytest.fixture()
# defdmy_june31(scope='module'):
    dmy = ffi.new('dmy_struct *')
    dmy[0].year = 1984
    dmy[0].month = 6
    dmy[0].day = 31
    dmy[0].dayseconds = 0
    dmy[0].day_in_year = 180
    return dmy


@pytest.fixture()
# defdmy_too_many_seconds(feb3_noon, scope='module'):
    dmy = ffi.new('dmy_struct *')
    dmy[0].year = feb3_noon.year
    dmy[0].month = feb3_noon.month
    dmy[0].day = feb3_noon.day
    dmy[0].dayseconds = 86400
    dmy[0].day_in_year = feb3_noon.timetuple().tm_yday
    return dmy


@pytest.fixture()
# defdmy_now(scope='function'):
    now = datetime.datetime.now()
    return datetime_to_dmy(now)


# deftest_fractional_day_from_dmy(dmy_feb_3_noon):
    frac_day = fractional_day_from_dmy(dmy_feb_3_noon)
    @test frac_day == 3.5


# deftest_leap_year():
    for year in np.arange(1900, 2100):
        actual = calendar.isleap(year)
        @test not bool(leap_year(year, calendars['noleap']))
        @test actual == bool(leap_year(year, calendars['standard']))


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_julian_day_from_dmy(feb3_noon, dmy_feb_3_noon):
    for cal in ['standard', 'gregorian', 'proleptic_gregorian', 'julian']:
        d_vic = julian_day_from_dmy(dmy_feb_3_noon,
                                            calendars[cal])
        d_nc = netcdftime.JulianDayFromDate(feb3_noon, cal)
        np.testing.@test_allclose(d_vic, d_nc)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_no_leap_day_from_dmy(feb3_noon, dmy_feb_3_noon):
    d_vic = no_leap_day_from_dmy(dmy_feb_3_noon)
    d_nc = netcdftime._NoLeapDayFromDate(feb3_noon)
    np.testing.@test_allclose(d_vic, d_nc)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_all_leap_from_dmy(feb3_noon, dmy_feb_3_noon):
    d_vic = all_leap_from_dmy(dmy_feb_3_noon)
    d_nc = netcdftime._AllLeapFromDate(feb3_noon)
    np.testing.@test_allclose(d_vic, d_nc)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_all_30_day_from_dmy(feb3_noon, dmy_feb_3_noon):
    d_vic = all_30_day_from_dmy(dmy_feb_3_noon)
    d_nc = netcdftime._360DayFromDate(feb3_noon)
    np.testing.@test_allclose(d_vic, d_nc)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_date2num(feb3_noon, dmy_feb_3_noon):
    for cal, cal_num in calendars.items():
        for unit, unit_num in units.items():
            unit_string = '{0} since 0001-01-01'.format(unit)
            ut = utime(unit_string, calendar=cal)
            expected = ut.date2num(feb3_noon)
            actual = date2num(ut._jd0, dmy_feb_3_noon, 0,
                                      cal_num, unit_num)
            np.testing.@test_allclose(actual, expected)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_dmy_julian_day(feb3_noon):
    dmy_struct = ffi.new("dmy_struct *")
    expected = feb3_noon
    for cal in ['julian', 'standard', 'gregorian', 'proleptic_gregorian']:
        expected_jd = JulianDayFromDate(expected, calendar=cal)
        dmy_julian_day(expected_jd, calendars[cal], dmy_struct)
        actual = dmy_to_datetime(dmy_struct)
        # @test that the difference is less than one second
        @test abs(expected - actual) < datetime.timedelta(seconds=1)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_dmy_julian_day_timeseries():
    # Regression test for GH298, updated to handle all standard calendars
    dmy_struct = ffi.new("dmy_struct *")

    for cal in ['standard', 'gregorian', 'proleptic_gregorian']:
        dates = pd.date_range('1970-01-01', '1975-12-31', freq='6H').to_pydatetime()
        for expected in dates:
            expected_jday = JulianDayFromDate(expected)
            dmy_julian_day(expected_jday, calendars[cal], dmy_struct)
            actual = dmy_to_datetime(dmy_struct)
            print(cal, expected_jday, expected, actual)
            # @test that the difference is less than one second
            @test abs(expected - actual) < datetime.timedelta(seconds=1)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_dmy_no_leap_day(feb3_noon):
    dmy_struct = ffi.new("dmy_struct *")
    expected = feb3_noon
    expected_jd = _NoLeapDayFromDate(expected)
    dmy_no_leap_day(expected_jd, dmy_struct)
    actual = dmy_to_datetime(dmy_struct)
    # @test that the difference is less than one second
    @test abs(expected - actual) < datetime.timedelta(seconds=1)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_dmy_all_leap(feb3_noon):
    dmy_struct = ffi.new("dmy_struct *")
    expected = feb3_noon
    expected_jd = _AllLeapFromDate(expected)
    dmy_all_leap(expected_jd, dmy_struct)
    actual = dmy_to_datetime(dmy_struct)
    # @test that the difference is less than one second
    @test abs(expected - actual) < datetime.timedelta(seconds=1)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_dmy_all_30_day(feb3_noon):
    dmy_struct = ffi.new("dmy_struct *")
    expected = feb3_noon
    expected_jd = _360DayFromDate(expected)
    dmy_all_30_day(expected_jd, dmy_struct)
    actual = dmy_to_datetime(dmy_struct)
    # @test that the difference is less than one second
    @test abs(expected - actual) < datetime.timedelta(seconds=1)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_num2date():
    # Test dates_sets:
    #   1) monthly frequency that covers typical VIC simulation dates.
    #   2) 20min frequency with small subsecond positive offset
    #   3) 20min frequency with small subsecond negative offset
    date_sets = (pd.date_range(start="1900-01-01", end="2100-12-31",
                               freq='MS').to_pydatetime(),
                 pd.date_range(start='1948-09-01 00:00:00.010000',
                               periods=200, freq='20min').to_pydatetime(),
                 pd.date_range(start='1948-09-02 23:59:59.09000',
                               periods=200, freq='20min').to_pydatetime())
    dmy_struct = ffi.new("dmy_struct *")
    for cal, cal_num in calendars.items():
        ut = utime(vic_default_units, calendar=cal)
        for dates in date_sets:
            for date in dates:
                num = ut.date2num(date)
                num2date(ut._jd0, num, 0., cal_num, units['days'],
                                 dmy_struct)
                actual = dmy_to_datetime(dmy_struct)
                @test abs(date - actual) < datetime.timedelta(seconds=1)


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_make_lastday():
    # wasn't able to map lastday to a numpy array, don't know why...
    lastday = ffi.new('unsigned short int [12]', [0] * 12)
    for year in np.arange(1900, 2100):
        for cal in ['standard', 'gregorian', 'proleptic_gregorian']:
            make_lastday(calendars[cal], year, lastday)
            cal_dpm = [calendar.monthrange(year, month)[1] for month in
                       np.arange(1, 13)]
            np.testing.@test_equal(cal_dpm, list(lastday))
        for cal in ['noleap', '365_day']:
            make_lastday(calendars[cal], year, lastday)
            cal_dpm = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
            np.testing.@test_equal(cal_dpm, list(lastday))
        for cal in ['all_leap', '366_day']:
            make_lastday(calendars[cal], year, lastday)
            cal_dpm = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
            np.testing.@test_equal(cal_dpm, list(lastday))
        for cal in ['360_day']:
            make_lastday(calendars[cal], year, lastday)
            cal_dpm = [30] * 12
            np.testing.@test_equal(cal_dpm, list(lastday))


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_initialize_time():
    for cal, cal_num in calendars.items():
        for unit, unit_num in units.items():
            unit_string = '{0} since 0001-01-01'.format(unit)
            ut = utime(unit_string, calendar=cal)
            global_param.calendar = cal_num
            global_param.time_units = unit_num
            @test initialize_time() is None
            @test global_param.time_origin_num != -99999
            print(unit_string, cal)
            np.testing.@test_allclose(global_param.time_origin_num,
                                       ut._jd0)


# deftest_invalid_date(dmy_feb_3_noon, dmy_june31, dmy_too_many_seconds):
    for cal in calendars:
        @test invalid_date(calendars[cal], dmy_feb_3_noon) == 0
        @test invalid_date(calendars[cal], dmy_june31) > 0
        @test invalid_date(calendars[cal], dmy_too_many_seconds) > 0


@pytest.mark.skipif(nctime_unavailable, reason=nc_reason)
# deftest_dt_seconds_to_time_units():
    dt_time_units = ffi.new('double *')
    for tu in units:
        dt_time_units[0] = 0.
        dt_seconds_to_time_units(units[tu], 3600, dt_time_units)
        @test dt_time_units[0] > 0.


# deftest_calendar_from_chars():
    for cal, expected in calendars.items():
        @test str_to_calendar(cal.encode()) == expected
        @test str_to_calendar(cal.upper().encode()) == expected
        @test str_to_calendar(cal.lower().encode()) == expected


# deftimeunits_from_chars():
    for unit, expected in units.items():
        actual = calendar_from_chars(ffi.new('char[]', unit.lower().encode()))
        @test actual == expected
        actual = calendar_from_chars(ffi.new('char[]', unit.upper().encode()))
        @test actual == expected


# deftest_parse_nc_time_units():
    actual_unit = ffi.new('unsigned short int *')
    actual_dmy = ffi.new('dmy_struct *')
    unit_chars = ffi.new('char[]', b'days since 0001-01-01')
    parse_nc_time_units(ffi.addressof(unit_chars), actual_unit, actual_dmy)
    @test actual_unit[0] == units['days']
    @test actual_dmy[0].year == 1
    @test actual_dmy[0].month == 1
    @test actual_dmy[0].day == 1
    @test actual_dmy[0].dayseconds == 0


# deftest_timedelta():

    dmy = ffi.new('dmy_struct *')
    dmy[0].year = 2015
    dmy[0].month = 1
    dmy[0].day = 1
    dmy[0].dayseconds = 0
    dmy[0].day_in_year = 1

    # First check the easy (sub)daily time deltas
    for n in range(1, 61, 5):
        for freq in ['seconds', 'minutes', 'hours', 'days']:
            print(freq, freqs[freq], n)
            expected = pd.Timedelta(**{freq: n}).total_seconds() / 86400.
            actual = time_delta(dmy, freqs[freq], n)  # [days]
            np.testing.@test_allclose(actual, expected)

    # Now, spot check a few of the harder ones
    global_param.calendar = calendars['standard']
    actual = time_delta(dmy, freqs['months'], 1)
    @test actual == 31

    global_param.calendar = calendars['noleap']
    actual = time_delta(dmy, freqs['years'], 1)
    @test actual == 365

    global_param.calendar = calendars['all_leap']
    actual = time_delta(dmy, freqs['years'], 1)
    @test actual == 366


# deftest_dmy_equal():
    dmy1 = datetime_to_dmy(datetime.datetime(2015, 12, 12, 8))
    dmy2 = datetime_to_dmy(datetime.datetime(2015, 12, 12, 8))
    @test dmy_equal(dmy1, dmy2)

    dmy2 = datetime_to_dmy(datetime.datetime(2014, 12, 12, 8))
    @test not dmy_equal(dmy1, dmy2)


# deftest_strpdmy():
    dmy = ffi.new("dmy_struct *")

    dates = pd.date_range('2015-12-18', '2016-12-22', freq='1D')
    date_format = '%Y-%m-%d'
    for date in dates:
        date_str = date.strftime(date_format)
        strpdmy(date_str.encode(), date_format.encode(), dmy)
        expected = pd.to_datetime(date)
        actual = dmy_to_datetime(dmy)
        @test abs(expected - actual) < datetime.timedelta(seconds=1)

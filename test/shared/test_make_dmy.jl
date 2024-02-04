# import ctypes

# from vic import ffi


# deftest_make_dmy():
global_param.model_steps_per_day[] = UInt64(1)
global_param.dt[] = 86400.0
global_param.startsec[] = Cuint(0)
global_param.startday[] = Cushort(1)
global_param.startmonth[] = Cushort(1)
global_param.startyear[] = Cushort(2015)
global_param.nrecs[] = UInt64(30)

calendars = ["CALENDAR_STANDARD", "CALENDAR_GREGORIAN",
  "CALENDAR_PROLEPTIC_GREGORIAN", "CALENDAR_NOLEAP",
  "CALENDAR_365_DAY", "CALENDAR_360_DAY", "CALENDAR_JULIAN",
  "CALENDAR_ALL_LEAP", "CALENDAR_366_DAY"]
calendar = calendars[1]


global_param.calendar[] = calendar
dmy = make_dmy(global_param)

@test dmy is not None
for i in 1:global_param.nrecs[]
  @test dmy[i].year == 2015
  @test dmy[i].month == 1
  @test dmy[i].day == i + 1
  @test dmy[i].dayseconds == 0
end

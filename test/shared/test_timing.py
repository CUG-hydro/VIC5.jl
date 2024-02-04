import time

# from vic.vic import ffi



# deftest_vic_timers():

    timer = ffi.new('timer_struct *')
    sleeptime = 1.5
    delta = 0.1

    # init sets delta to zero
    timer_init(timer)

    # start gets current time
    timer_start(timer)

    # sleep
    time.sleep(sleeptime)

    # stop pauses the timer
    timer_stop(timer)
    @test timer[0].delta_wall >= sleeptime
    @test timer[0].delta_wall < sleeptime + delta
    @test timer[0].delta_cpu >= 0.

    # start the timer again
    timer_continue(timer)

    # sleep again
    time.sleep(sleeptime)

    # stop after the lap time sleep
    timer_stop(timer)
    @test timer[0].delta_wall >= 2 * sleeptime
    @test timer[0].delta_wall < 2 * (sleeptime + delta)

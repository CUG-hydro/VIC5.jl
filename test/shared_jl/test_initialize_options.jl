using Test
using VIC5

options.AERO_RESIST_CANSNOW[] = Cushort(3)
@test options.AERO_RESIST_CANSNOW[] == Cushort(3)
options


@test options.AboveTreelineVeg[] == -1
@test initialize_options() === nothing
@test !options.BLOWING[]
@test options.TFALLBACK[]

print_license()
print_version()
print_usage("vic_driver_string")

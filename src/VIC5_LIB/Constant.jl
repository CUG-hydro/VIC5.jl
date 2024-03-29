
const DAYS_PER_360DAY_YEAR = 360

const DAYS_PER_YEAR = 365

const DAYS_PER_LYEAR = 366

const DAYS_PER_JYEAR = 365.25

const HOURS_PER_DAY = 24

const MONTHS_PER_YEAR = 12

const MIN_PER_HOUR = 60

const MIN_PER_DAY = MIN_PER_HOUR * HOURS_PER_DAY

const SEC_PER_MIN = 60

const SEC_PER_HOUR = SEC_PER_MIN * MIN_PER_HOUR

const SEC_PER_DAY = SEC_PER_HOUR * HOURS_PER_DAY

const JOULES_PER_CAL = 4.1868

const GRAMS_PER_KG = 1000

const PA_PER_KPA = 1000

const BAR_PER_KPA = 100

const RAD_PER_DEG = 0.0174532925

const M_PER_KM = 1000

const MM_PER_M = 1000

const CM_PER_M = 100

const MM_PER_CM = 10

const MM_PER_IN = 25.4

const IN_PER_M = MM_PER_M ÷ MM_PER_IN

const MOLE_PER_KMOLE = 1000

const FRACT_TO_PERCENT = 100

const PPM_to_MIXRATIO = 1.0e-6

const CONST_PI = 3.141592653589793

const CONST_CDAY = 86400

const CONST_SDAY = 86164

const CONST_DDAYS_PER_YEAR = 365.2425

const CONST_OMEGA = (2.0CONST_PI) ÷ CONST_SDAY

const CONST_SECPERRAD = 13750.9871

const CONST_RADPERDAY = 0.017214

const CONST_RADPERDEG = 0.01745329

const CONST_MINDECL = -0.4092797

const CONST_DAYSOFF = 11.25

const CONST_REARTH = 6.37122e6

const CONST_G = 9.80616

const CONST_STEBOL = 5.67e-8

const CONST_BOLTZ = 1.38065e-23

const CONST_AVOGAD = 6.02214e26

const CONST_KARMAN = 0.4

const CONST_MWDAIR = 28.966

const CONST_MWWV = 18.016

const CONST_MWCO2 = 44.011

const CONST_MWAIR = 28.97

const CONST_MWC = 12.01

const CONST_RGAS = CONST_AVOGAD * CONST_BOLTZ

const CONST_RDAIR = CONST_RGAS ÷ CONST_MWDAIR

const CONST_RWV = CONST_RGAS ÷ CONST_MWWV

const CONST_EPS = CONST_MWWV ÷ CONST_MWAIR

const CONST_TKTRIP = 273.16

const CONST_TKFRZ = 273.15

const CONST_PSTD = 101325.0

const CONST_TSTD = CONST_TKFRZ + 15.0

const CONST_RHODAIR = CONST_PSTD ÷ (CONST_RDAIR * CONST_TKFRZ)

const CONST_RHOFW = 1000.0

const CONST_RHOICE = 917.0

const CONST_CPDAIR = 1004.64

const CONST_CPMAIR = 1013.0

const CONST_CPWV = 1810.0

const CONST_CPFW = 4188.0

const CONST_CPFWICE = 4200.0

const CONST_CPICE = 2117.27

const CONST_VCPICE_WQ = CONST_CPICE * CONST_RHOFW

const CONST_LATICE = 333700.0

const CONST_LATVAP = 2.501e6

const CONST_LATSUB = CONST_LATICE + CONST_LATVAP

const CONST_SPVAL = 1.0e30

const LOG_LVL = 25

const MAXSTRING = 2048

const MISSING = -99999.0

const MISSING_USI = 99999.0

const MISSING_S = "MISSING"

const NODATA_VH = -1

const NODATA_VEG = -1

const ERROR = -999

const MAX_LAYERS = 3

const MAX_NODES = 50

const MAX_FRONTS = 3

const MAX_FROST_AREAS = 10

const MAX_LAKE_BASIN_NODES = 20

const MAX_LAKE_NODES = 20

const MAX_ZWTVMOIST = 11

const MINSOILDEPTH = 0.001

const MIN_FCANOPY = 0.0001

const MIN_SNOW_WETFRAC = 0.01

const MIN_SUBDAILY_STEPS_PER_DAY = 4

const MAX_SUBDAILY_STEPS_PER_DAY = 1440

const WET = 0

const DRY = 1

const RAIN = 0

const SNOW = 1

const VERSION = "5.0.1 February 1, 2017"

const SHORT_VERSION = "5.0.1"

const GIT_VERSION = "unset"

const USERNAME = "unset"

const HOSTNAME = "unset"

# const BUILD_DATE = __DATE__
# const BUILD_TIME = __TIME__
# const COMPILER_VERSION = __clang_version__
# const CSTANDARD = __STDC_VERSION__

const COMPILER = "clang"

const PLATFORM = "LINUX"

const MAX_FORCE_FILES = 2

const MAX_OUTPUT_STREAMS = 20

const COMPRESSION_LVL_UNSET = -1

const COMPRESSION_LVL_DEFAULT = 5

const OUT_MULT_DEFAULT = 0

const OUT_ASCII_FORMAT_DEFAULT = "%.4f"

const SNOW_BAND_TRUE_BUT_UNSET = 99999

const MAX_ROOT_ITER = 9999

const VIC_DRIVER = "Classic"

const BINHEADERSIZE = 256

const MAX_VEGPARAM_LINE_LENGTH = 500

const ASCII_STATE_FLOAT_FMT = "%.16g"

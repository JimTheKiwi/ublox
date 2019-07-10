# TIM-TOS (0x0D, 0x12)
# Time Pulse Time and Frequency Data
#
# This message contains information about the time pulse that has just happened
# and the state of the disciplined oscillators(s) at the time of the pulse.
# It gives the UTC and GNSS times and time uncertainty of the pulse together
# with frequency and frequency uncertainty of the disciplined oscillators.
# It also supplies leap second information.
# 
# Supported on:
#  - u-blox 8 / u-blox M8 with protocol version 16-23.01
#    (only with Timing & Frequency Sync Products)
#

uint8 CLASS_ID = 13 
uint8 MESSAGE_ID = 18

uint8 version # Message version (0 for this version)
uint8 gnssId  # GNSS system used for reporting GNSS time
uint8[2] reserved1
uint32 flags
uint32 FLAGS_LEAPNOW = 1      # currently in a leap second
uint32 FLAGS_LEAPSOON = 2     # leap second scheduled in current minute
uint32 FLAGS_LEAPPOSITIVE = 4 # positive leap second
uint32 FLAGS_TIMEINLIMIT = 8  # time pulse is within tolerance limit (CfgSMGR timeTolerance)
uint32 FLAGS_INTOSCINLIMIT = 16 # internal oscillator is within tolerance limit (UBX-CFG-SMGR freqTolerance field)
uint32 FLAGS_EXTOSCINLIMIT = 32 # external oscillator is within tolerance limit (UBX-CFG-SMGR freqTolerance field)
uint32 FLAGS_GNSSTIMEVALID = 64 # GNSS time is valid
uint32 FLAGS_UTCTIMEVALID = 128 # UTC time is valid

uint32 FLAGS_DISCSRC_MASK = 1792       # 3-bit Disciplining source identifier:
uint32 FLAGS_DISCSRC_INTERNAL = 0      # 0: internal oscillator
uint32 FLAGS_DISCSRC_GNSS = 256        # 1: GNSS
uint32 FLAGS_DISCSRC_EXTINT0 = 512     # 2: EXTINT0
uint32 FLAGS_DISCSRC_EXTINT1 = 768     # 3: EXTINT1
uint32 FLAGS_DISCSRC_INTOSCHOST = 1024 # 4: internal oscillator measured by the host
uint32 FLAGS_DISCSRC_EXTOSCHOST = 1280 # 5: external oscillator measured by the host

uint32 FLAGS_RAIM = 2048 # (T)RAIM system is currently active.
  # Note this flag only reports the current state of the GNSS solution;
  # it is not affected by whether or not the GNSS solution is being used
  # to discipline the oscillator.
uint32 FLAGS_COHPULSE = 4096 # coherent pulse generation is currently in operation
uint32 FLAGS_LOCKEDPULSE = 8192 # time pulse is locked

uint16 year  # Year of UTC time
uint8 month  # Month of UTC time
uint8 day    # Day of UTC time
uint8 hour   # Hour of UTC time
uint8 minute # Minute of UTC time
uint8 second # Second of UTC time

uint8 utcStandard             # UTC Standard Identifier
uint8 UTCSTANDARD_UNKNOWN = 0 # unknown
uint8 UTCSTANDARD_GPS = 3     # UTC as operated by the U.S. Naval Observatory
uint8 UTCSTANDARD_GLONAS = 6  # UTC as operated by the former Soviet Union
uint8 UTCSTANDARD_BEIDOU = 7  # UTC by the National Time Service Center, China

int32 utcOffset        # ns Time offset between the preceding pulse and UTC top of second
uint32 utcUncertainty  # ns Uncertainty of utcOffset
uint32 week            # GNSS week number
uint32 TOW             # s GNSS time of week
int32 gnssOffset       # ns Time offset between the preceding pulse and GNSS top of second
uint32 gnssUncertainty # ns Uncertainty of gnssOffset

int32 intOscOffset       # ppb Internal oscillator frequency offset
uint32 intOscUncertainty # ppb Internal oscillator frequency uncertainty
int32 extOscOffset       # ppb External oscillator frequency offset
uint32 extOscUncertainty # ppb External oscillator frequency uncertainty

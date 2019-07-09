# MON-SMGR (0x0A 0x2e)
# Synchronization Manager Status
#
# This message reports the status of internal and external oscillators and
# sources as well as whether GNSS is used for disciplining.

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 46

uint8 version       # Message version (0 for this version)
uint8[3] reserved1
uint32 iTOW         # ms Time of the week

uint16 intOsc       # A bit mask, indicating the status of the local oscillator
uint16 extOsc       # A bit mask, indicating the status of the external oscillator
uint16 OSC_OSCSTATE_MASK = 15
uint16 OSC_OSCSTATE_AUTONOMOUS = 0 # Autonomous operation
uint16 OSC_OSCSTATE_CALIBRATION = 1 # Calibration ongoing
uint16 OSC_OSCSTATE_STEERED = 2 # Oscillator is steered by the host
uint16 OSC_OSCSTATE_IDLE = 3 # Idle state
uint16 OSC_OSCCALIB = 16 # Oscillator gain is calibrated
uint16 OSC_OSCDISC = 32 # Signal is disciplined

uint8 discSrc       # Disciplining source identifier:
uint8 DISCSRC_INTERNAL = 0
uint8 DISCSRC_GNSS = 1
uint8 DISCSRC_EXTINT0 = 2
uint8 DISCSRC_EXTINT1 = 3
uint8 DISCSRC_INT_HOST = 4 # Internal oscillator measured by the host
uint8 DISCSRC_EXT_HOST = 5 # External oscillator measured by the host

uint8 gnss          # A bit mask, indicating the status of the GNSS
uint8 GNSS_GNSSAVAIL = 1

uint8 extInt0       # A bit mask, indicating the status of the external input 0
uint8 extInt1       # A bit mask, indicating the status of the external input 1
uint8 EXTINT_EXTINTAVAIL = 1 # Signal present at this input
uint8 EXTINT_EXTINTTYPE = 2  # Source type: 0: frequency, 1: time
uint8 EXTINT_EXTINTFEEDBACK = 4  # This source is used as feedback of the external oscillator

# see MON-IO message

uint32 rxBytes     # Number of bytes ever received
uint32 txBytes     # Number of bytes ever sent
uint16 parityErrs  # Number of 100ms timeslots with parity errors
uint16 framingErrs # Number of 100ms timeslots with framing errors
uint16 overrunErrs # Number of 100ms timeslots with overrun errors
uint16 breakCond   # Number of 100ms timeslots with break conditions
uint8[4] reserved

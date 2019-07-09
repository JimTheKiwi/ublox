# MON-TXBUF (0x0A 0x08)
# Transmitter Buffer Status

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 8

uint16[6] pending   # Number of bytes pending in transmitter buffer for each target
uint8[6] usage      # Maximum % usage transmitter buffer
                    # during the last sysmon period for each target
uint8[6] peakUsage  # Maximum % usage transmitter buffer for each target
uint8 tUsage        # Maximum % usage of transmitter buffer
                    # during the last sysmon period for all targets
uint8 tPeakusage    # Maximum % usage of transmitter buffer for all targets

uint8 errors        # Error bitmask
uint8 ERRORS_LIMIT_MASK = 63
uint8 ERRORS_MEM = 64
uint8 ERRORS_ALLOC = 128

uint8 reserved1

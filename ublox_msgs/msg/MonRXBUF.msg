# MON-RXBUF (0x0A 0x07)
# Receiver Buffer Status

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 7

uint16[6] pending   # Number of bytes pending in receiver buffer for each target
uint8[6] usage      # Maximum % usage receiver buffer
                    # during the last sysmon period for each target
uint8[6] peakUsage  # Maximum % usage receiver buffer for each target

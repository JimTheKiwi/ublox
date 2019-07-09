# NAV-EOE (0x01 0x61)
# End Of Epoch
#
# This message is intended to be used as a marker to collect all navigation
# messages of an epoch. It is output after all enabled NAV class messages
# (except UBX-NAV-HNR) and after all enabled NMEA messages.

uint8 CLASS_ID = 1
uint8 MESSAGE_ID = 97

uint32 iTOW             # GPS ms Time Of Week of the navigation epoch.

# MON-IO (0x0a 0x02)
# I/O Subsystem Status
#
# The size of the message is determined by the number of ports 'N' the receiver
# supports, i.e. on u-blox 5 the number of ports is 6.

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 2

MonIO_Port[] ports

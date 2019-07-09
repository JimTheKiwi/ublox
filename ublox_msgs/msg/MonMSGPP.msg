# MON-MSGPP (0x0A 0x06)
# Message Parse and Process Status

uint8 CLASS_ID = 10
uint8 MESSAGE_ID = 6

uint16[8] msg1 # Number of successfully parsed messages for each protocol on port0
uint16[8] msg2 # Number of successfully parsed messages for each protocol on port1
uint16[8] msg3 # Number of successfully parsed messages for each protocol on port2
uint16[8] msg4 # Number of successfully parsed messages for each protocol on port3
uint16[8] msg5 # Number of successfully parsed messages for each protocol on port4
uint16[8] msg6 # Number of successfully parsed messages for each protocol on port5
uint32[6] skipped # Number skipped bytes for each port

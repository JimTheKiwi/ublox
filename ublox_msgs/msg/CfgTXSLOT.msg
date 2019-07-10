# UBX-CFG-TXSLOT (0x06 0x53)
# TX buffer time slots Configuration
# For Ublox 8, version 16 through 23 (only with Time & Frequency Sync products)
#
# (From the M8 Receiver Description, a little confusing:)
# This message configures how transmit time slots are defined for the receiver
# interfaces. These time slots are relative to the chosen time pulse.
# A receiver that supports this message offers 3 time slots: nr. 0, 1 and 2.
# These time pulses follow each other and their associated priorities decrease
# in this order. The end of each can be specified in this message, the
# beginning is when the circularly previous slot ends (i.e. slot 0 starts when
# slot 2 finishes).
#
# (Clearer from section 26.7 in M8 Receiver Description:)
# 26.7 Message transmission time slot reservations on host interfaces:
# The firmware provides three message transmission time slots that are aligned
# to the time pulse output of the receiver. No message is scheduled for
# transmission in the first slot after the leading edge of the time pulse.
# The second slot is reserved for the UBX-TIM-TOS message and
# the third slot is used for outputting other messages.
# However, any message transmission that was started will be finished before
# a new message is started.
# The time slots can be enabled and configured using UBX-CFG-TXSLOT.
# When the reference time pulse is disabled or runs at a high frequency it
# may happen that many or all outgoing messages are lost. Therefore the
# time slot mechanism should be configured to match the time pulse behavior
# or disabled altogether.

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 83

uint8 version   # Message version (0 for this version)

uint8 enable           # Bitfield of ports for which the slots are enabled.
uint8 ENABLE_DDC = 1   # DDC/I2C
uint8 ENABLE_UART1 = 2
uint8 ENABLE_UART2 = 4
uint8 ENABLE_USB = 8
uint8 ENABLE_SPI = 16

uint8 refTp                 # Reference timepulse source
uint8 REFTP_TIMEPULSE  = 0  # Timepulse
uint8 REFTP_TIMEPULSE2 = 1  # Timepulse2

uint8 reserved1

uint32[3] end    # End of timeslot in milliseconds after time pulse

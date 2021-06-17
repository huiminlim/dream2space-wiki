import sys
import time

import serial

com_port = input("Enter COM port: ")
option = input("Enter 1 for TT&C transceiver, 2 for Payload transceiver: ")
channel = input("Enter channel [000-127]: ")


ser = serial.Serial(com_port, baudrate=9600, timeout=10)

ser.write(b"AT")
time.sleep(1)
ret = ser.readline()

print(ret)

if ret != b"OK\r\n":
    print("Not ok")
    sys.exit()

at_channel_command = ("AT+" + channel).encode("utf-8")

if option == "1":
    # Channel = 005
    ser.write(at_channel_command)
    time.sleep(0.01)
    print(ser.readline())

    # Baud rate = 9600
    ser.write(b"AT+B9600")
    time.sleep(0.01)
    print(ser.readline())


elif option == "2":
    # Channel = 125
    ser.write(at_channel_command)
    time.sleep(0.01)
    print(ser.readline())

    # Baud rate = 115200
    ser.write(b"AT+B115200")
    time.sleep(0.01)
    print(ser.readline())

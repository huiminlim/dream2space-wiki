import serial
import time
import sys

com_port = input("Enter com port")
option = input("Enter 1 for ttnc, 2 for payload")

ser = serial.Serial(com_port, baudrate=9600, timeout=10)

ser.write(b"AT")
time.sleep(1)
ret = ser.readline()

print(ret)

if ret != b"OK\r\n":
    print("Not ok")
    sys.exit()


if option == "1":
    # Channel = 005
    ser.write(b"AT+C005")
    time.sleep(0.01)
    print(ser.readline())

    # Baud rate = 9600
    ser.write(b"AT+B9600")
    time.sleep(0.01)
    print(ser.readline())
    


elif option == "2":
    # Channel = 125
    ser.write(b"AT+C125")
    time.sleep(0.01)
    print(ser.readline())

    # Baud rate = 115200
    ser.write(b"AT+B115200")
    time.sleep(0.01)
    print(ser.readline())



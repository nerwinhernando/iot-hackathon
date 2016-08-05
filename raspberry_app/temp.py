#!/usr/bin/python
import sys
import Adafruit_DHT
import time

def function():
    while True:
        humidity, temperature = Adafruit_DHT.read_retry(11, 4) #BCM Notation
        print ('Room Condition: Temp: {0:0.1f} C  Humidity: {1:0.1f} %'.format(temperature, humidity))
        time.sleep(15)
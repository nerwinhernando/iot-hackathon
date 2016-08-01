import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup (11, GPIO.IN)
GPIO.setup(12, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.setup(13, GPIO.OUT)
GPIO.setup(15, GPIO.OUT)

while True:
	i = GPIO.input(11)
	if i == 0:
		print "Meeting Room is empty",i
		GPIO.output(13,0)
		GPIO.output(15, 0)
		time.sleep(0.1)
	elif i==1:
		print "Meeting Room is occupied",i
		GPIO.output(13,0)
		GPIO.output(15,0)
		time.sleep(0.1)
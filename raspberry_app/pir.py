import RPi.GPIO as GPIO
import time
import urllib, urllib2

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup (11, GPIO.IN) #pir
GPIO.setup(12, GPIO.IN, pull_up_down = GPIO.PUD_UP) #button
GPIO.setup(13, GPIO.OUT) #led
GPIO.setup(15, GPIO.OUT) #led

occupied = {
    "id": 3,
    "status": 1
}

empty = {
    "id": 3,
    "status": 0
}

url = 'http://10.136.142.173:3000/api/v1/meeting_rooms'

def sendPost(status):
	data = urllib.urlencode(status)
	request = urllib2.Request(url, data)
	response = urllib2.urlopen(request).read()
	print (response)

while True:
	i = GPIO.input(11)
	if i == 0:
		print "Meeting Room is empty",i
		GPIO.output(13,0)
		GPIO.output(15, 0)
		sendPost(empty)
		time.sleep(5)
	elif i==1:
		print "Meeting Room is occupied",i
		GPIO.output(13,1)
		GPIO.output(15,1)
		sendPost(occupied)
		time.sleep(5)
import RPi.GPIO as GPIO
import time
import urllib
import urllib2

url = "http://10.136.130.203:8000/v1/collectionProfiles/"
#url = "http://api.learn2crack.com/rpi/rpi_get.php"

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup (11, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(3, GPIO.OUT)

while True:
	try:
		i=GPIO.input(11)
		if i == False:
			print "Button Pressed",i
			response = urllib.urlopen(url).read()
			GPIO.output(3,1)
			time.sleep(0.1)
			print "\n",response
			GPIO.output(3,0)
	except IOError:
		print "IOError"

import RPi.GPIO as GPIO
import time
import urllib, urllib2

try:
	import configparser
except ImportError:
	from ConfigParser import ConfigParser

class Settings(object):
	server = ""
	occupied = ""
	empty = ""
	pir_pin = None
	led1_output_pin = None
	led2_output_pin = None
	postEnabled = None

	def loadIniFile(self):
		#import settings from ini file
		config = configparser.ConfigParser()
		config.read('idiot.ini')

		server_IP = config['DEFAULT']['default_server_ip']
		server_port = config['DEFAULT']['default_server_port']
		server_resource = config['DEFAULT']['default_server_resource']

		self.server = 'http://' + server_IP + ':' + server_port + server_resource

		#load json values
		id_value = config['PIR']['id_value']
		occupied_status_value = config['PIR']['occupied_status_value']
		empty_status_value = config['PIR']['empty_status_value']

		self.occupied = "{\"id\""+':'+str(id_value)+","+"\"status\""+": "+str(occupied_status_value)+"}"
		self.empty = "{\"id\""+':'+str(id_value)+","+"\"status\""+": "+str(empty_status_value)+"}"

		self.pir_pin = int(config['PIR']['pir_input_pin'])
		self.led1_output_pin = int(config['PIR']['led1_output_pin'])
		self.led2_output_pin = int(config['PIR']['led2_output_pin'])

		self.postEnabled = str(config['PIR']['http_request_enabled'])

	def set_GPIO(self):
		GPIO.setwarnings(False)
		GPIO.setmode(GPIO.BOARD)
		GPIO.setup(self.pir_pin, GPIO.IN)  # pir
#		GPIO.setup(12, GPIO.IN, pull_up_down=GPIO.PUD_UP)  # button
		GPIO.setup(self.led1_output_pin, GPIO.OUT)  # led
		GPIO.setup(self.led2_output_pin, GPIO.OUT)  # led


def sendPost(server,status,postEnabled):
	if postEnabled == "True":
		opener = urllib2.build_opener(urllib2.HTTPHandler)
		request = urllib2.Request(server, status)
		request.add_header('Content-Type','application/json')
		request.get_method = lambda:'PUT'
		url = opener.open (request)
		print("PUT",server,status,"sent")

def function():
	HIGH = 1
	LOW = 0

	OCCUPIED = 1
	EMPTY = 0

	settings = Settings()
	settings.loadIniFile()
	settings.set_GPIO()

	FLAG = None

	try:
		while True:
			pir = GPIO.input(settings.pir_pin)

			if pir == EMPTY:
				print ("Meeting Room is empty")
				GPIO.output(settings.led1_output_pin,LOW)
				GPIO.output(settings.led2_output_pin, LOW)
				if FLAG is not EMPTY:
					sendPost(settings.server, settings.empty, settings.postEnabled)
					FLAG = EMPTY
				time.sleep(1)

			elif pir == OCCUPIED:
				print ("Meeting Room is occupied")
				GPIO.output(settings.led1_output_pin,HIGH)
				GPIO.output(settings.led2_output_pin,HIGH)
				if FLAG is not OCCUPIED:
					sendPost(settings.server, settings.occupied,settings.postEnabled)
					FLAG = OCCUPIED
				time.sleep(1)

	except Exception as error:
		print("\nPIR Module stopped!", error)
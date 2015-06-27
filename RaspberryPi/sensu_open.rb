require 'rubygems'
#gem 'serialport','>=1.0.4'
require 'serialport'

@serialport = '/dev/ttyACM0'
@serial_bps = 9600

#a = SerialPort.new(@serial_port,@serial_bps,8,1,0)
a = SerialPort.new('/dev/ttyACM0',9600,8,1,0)


a.write("150\r\n")
a.write("s\r\n")

a.write("150\r\n")
a.write("w\r\n")

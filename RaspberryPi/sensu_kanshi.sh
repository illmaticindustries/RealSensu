#!/bin/bash
#get log file from sensu server
scp -i ~/.ssh/id_rsa user@illmaticindustries.com:/var/log/sensu/alert-procs.log ~/
log_string=`head ~/alert-procs.log`
#define sensu detect level
detect_level="critical"
#main sensu process
if [ $log_string = $detect_level ] ; then
  ruby ~/RaspberryPi/sensu_open.rb
  sudo ~/RaspberryPi/sensu_swing.sh
  sudo ~/RaspberryPi/sensu_stop.sh
  ruby ~/RaspberryPi/sensu_close.rb
fi

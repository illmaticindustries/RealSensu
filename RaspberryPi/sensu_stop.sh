#!/bin/bash
sudo echo 18 > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio18/direction
sudo echo 0 > /sys/class/gpio/gpio18/value

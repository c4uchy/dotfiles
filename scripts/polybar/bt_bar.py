#!/usr/bin/env python
# -*- coding: utf-8 -*-

import subprocess
import os
import pyudev
from time import sleep

context = pyudev.Context()
monitor = pyudev.Monitor.from_netlink(context)
# monitor.filter_by(subsystem='bluetooth')
monitor.filter_by(subsystem='input')
monitor.start()

for device in iter(monitor.poll, None):

    if "add" in str(device.action):

        # bluetooth headphone
        if device.get('PRODUCT') == "5/0/0/0":

            sleep(5)  # wait for connection succes
            subprocess.call([os.path.expanduser('~/.config/polybar/launch.sh')])

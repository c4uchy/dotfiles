#!/usr/bin/python3.6
# -*- coding: utf-8 -*-

import subprocess
import os
import pyudev

context = pyudev.Context()
monitor = pyudev.Monitor.from_netlink(context)
monitor.filter_by(subsystem='usb')
monitor.start()

for device in iter(monitor.poll, None):

    if device.action == "add":

        if device.get('ID_SERIAL') == "Topre_Corporation_HHKB_Professional":
            devicePluged = device
            # need twice for first connection from boot
            subprocess.call([os.path.expanduser('~/scripts/keyboard/hhkbPlugIn.sh')])
            subprocess.call([os.path.expanduser('~/scripts/keyboard/hhkbPlugIn.sh')])

    elif device.action == "remove":
        try:
            # device is connected
            devicePluged = devicePluged
            if device == devicePluged:
                subprocess.call([os.path.expanduser('~/scripts/keyboard/hhkbPlugOut.sh')])
        except NameError:
            if device.get('PRODUCT') == "853/100/102":
                subprocess.call([os.path.expanduser('~/scripts/keyboard/hhkbPlugOut.sh')])
            continue

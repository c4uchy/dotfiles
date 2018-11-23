#!/usr/bin/python3.6
# -*- coding: utf-8 -*-

import subprocess
import os
import pyudev

context = pyudev.Context()
monitor = pyudev.Monitor.from_netlink(context)
#monitor.filter_by(subsystem='usb')
monitor.filter_by(subsystem='input')
monitor.start()

flag = 0
#first = 1
for device in iter(monitor.poll, None):

    if device.action == "add":

        #if device.get('ID_SERIAL') == "Topre_Corporation_HHKB_Professional":
        if flag == 0 and device.get('ID_MODEL') == "ThinkPad_Compact_USB_Keyboard_with_TrackPoint":
            devicePluged = device
            flag = 1
            # need twice for first connection from boot
            #if first == 1:
            #    subprocess.call([os.path.expanduser('~/scripts/keyboard/thkbPlugIn.sh')])
            #    first = 0
            subprocess.call([os.path.expanduser('~/scripts/keyboard/thkbPlugIn.sh')])

    elif device.action == "remove":
        try:
            devicePluged = devicePluged
            if flag == 1 and device == devicePluged:
                flag = 0
                subprocess.call([os.path.expanduser('~/scripts/keyboard/thkbPlugOut.sh')])
        except NameError:
            if device.get('PRODUCT') == "17ef/6047/330":
                #if first == 1:
                #    subprocess.call([os.path.expanduser('~/scripts/keyboard/thkbPlugOut.sh')])
                #    first = 0
                subprocess.call([os.path.expanduser('~/scripts/keyboard/thkbPlugOut.sh')])
            continue
#        try:
#            # device is connected
#            devicePluged = devicePluged
#            if device == devicePluged:
#                subprocess.call([os.path.expanduser('~/scripts/keyboard/hhkbPlugOut.sh')])
#        except NameError:
#            if device.get('PRODUCT') == "853/100/102":
#                subprocess.call([os.path.expanduser('~/scripts/keyboard/hhkbPlugOut.sh')])
#            continue

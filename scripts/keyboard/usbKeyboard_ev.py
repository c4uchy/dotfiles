#!/usr/bin/python3.6
# -*- coding: utf-8 -*-

import subprocess
import os
import pyudev
from time import sleep

context = pyudev.Context()
monitor = pyudev.Monitor.from_netlink(context)
monitor.filter_by(subsystem='input')
monitor.start()

for device in iter(monitor.poll, None):

    if device.action == "add":

        if device.get('ID_MODEL') == "ThinkPad_Compact_USB_Keyboard_with_TrackPoint":
            #devicePluged = device
            sleep(8)
            subprocess.call(["setxkbmap", "-option"])
            subprocess.call(['xmodmap', os.path.expanduser('~/.Xmodmap')])

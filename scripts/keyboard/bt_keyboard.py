#!/usr/bin/env python
# -*- coding: utf-8 -*-

import subprocess
import os
import pyudev

context = pyudev.Context()
monitor = pyudev.Monitor.from_netlink(context)
monitor.filter_by(subsystem='input')
monitor.start()

for device in iter(monitor.poll, None):

    if "add" in str(device.action):

        if device.get('PRODUCT') == "5/5ac/239/11b":

            subprocess.call([os.path.expanduser('~/scripts/keyboard/btKbPlugIn.sh')])

    elif "remove" in str(device.action):

        if device.get('PRODUCT') == "5/5ac/239/11b":

            subprocess.call([os.path.expanduser('~/scripts/keyboard/btKbPlugOut.sh')])

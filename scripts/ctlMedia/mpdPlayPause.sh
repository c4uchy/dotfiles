#!/bin/bash

#STATE=`mpc | grep playing`
if [ -z "`mpc | grep playing`" ]; then
  mpc play
else
  mpc pause
fi

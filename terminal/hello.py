#!/usr/bin/env python

import subprocess

def hello():
    print "Hello!"

result = subprocess.check_output("gnome-terminal -x bash -c 'hello(); exec bash' & gnome-terminal -x bash -c 'hello(); exec bash &'", shell=True)

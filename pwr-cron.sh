#!/bin/bash
/usr/bin/power-state adp1._psr > /etc/fakedev/power_supply/ADP1/uevent
/usr/bin/power-state bat1.uevent > /etc/fakedev/power_supply/BAT1/uevent
exit 0

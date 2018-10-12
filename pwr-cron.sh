#!/bin/bash
FAKE_DIR_ADP1="/etc/fakedev/power_supply/ADP1"
FAKE_DIR_BAT1="/etc/fakedev/power_supply/BAT1"
# uncomment if 2 batteries present
# FAKE_DIR_BAT2="/etc/fakedev/power_supply/ADP1"
if [ ! -d "$FAKE_DIR_ADP1" ]
then
    mkdir -p "$FAKE_DIR_ADP1"
fi

if [ ! -d "$FAKE_DIR_BAT1" ]
then
    mkdir -p "$FAKE_DIR_BAT1"
fi

# uncomment if 2 batteries present
# if [ ! -d "$FAKE_DIR_BAT2" ]
# then
#     mkdir -p "$FAKE_DIR_BAT2"
# fi
# not testing success as it is just a simple workaround
/usr/bin/power-state adp1._psr > ${FAKE_DIR_ADP1}/uevent
/usr/bin/power-state bat1.uevent > ${FAKE_DIR_BAT1}/uevent
# uncomment if 2 batteries present
# /usr/bin/power-state bat2.uevent > ${FAKE_DIR_BAT2}/uevent

exit 0

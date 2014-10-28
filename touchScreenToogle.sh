#!/bin/bash

id=$(xinput --list --id-only 'Atmel Atmel maXTouch Digitizer')
devEnabled=$(xinput --list-props $id | awk '/Device Enabled/{print !$NF}')
xinput --set-prop $id 'Device Enabled' $devEnabled
notify-send --icon computer 'Script TouchScreenToogle' "Device Enabled = $devEnabled"
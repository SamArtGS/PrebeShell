#!/bin/bash

cat /proc/driver/rtc |grep 'rtc_date' | grep '[0-9]*-[0-9]*-[0-9]*' -Eo

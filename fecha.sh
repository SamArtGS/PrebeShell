#!/bin/bash
echo -e "\e[33mLa fecha del dia de hoy es:"
cat /proc/driver/rtc |grep 'rtc_date' | grep '[0-9]*-[0-9]*-[0-9]*' -Eo

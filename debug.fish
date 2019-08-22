#!/bin/fish

sudo openocd -f openocd.cfg > /dev/null 2> /dev/null &
arm-none-eabi-gdb target/thumbv7m-none-eabi/release/k2k_advantage --command=openocd.gdb
jobs -l -p | tail -n 1 | xargs sudo kill

#!/bin/bash
ssh srv "docker exec zephyr-t114 west build -b heltec_t114 -s app" && rsync -avh --progress srv:~/prj/zigglib/heltec-t114-support/build/zephyr/zephyr.elf . && pyocd load zephyr.elf --target nrf52840

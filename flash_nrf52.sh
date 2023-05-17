#!/bin/bash

BINARY_PATH=$1

nrfjprog --eraseall -f nrf52

nrfjprog --program $BINARY_PATH -f nrf52

nrfjprog --reset -f nrf52

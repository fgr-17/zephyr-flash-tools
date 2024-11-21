#!/bin/bash

BINARY_PATH=$1

nrfjprog --eraseall -f nrf53

nrfjprog --program $BINARY_PATH -f nrf53

nrfjprog --reset -f nrf53

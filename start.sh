#!/bin/sh

SERVER_ADDRESS=${SERVER_ADDRESS}
SERVER_PORT=${SERVER_PORT:-9443}
LOCAL_ADDRESS=${LOCAL_ADDRESS:-0.0.0.0}
LOCAL_PORT=${LOCAL_PORT:-8388}
MODE=${MODE:-fast}
MTU=${MTU:-1400}
SNDWND=${SNDWND:-1024}
RCVWND=${RCVWND:-1024}

/root/client_linux_amd64 -r ${SERVER_ADDRESS}:${SERVER_PORT} -l ${LOCAL_ADDRESS}:${LOCAL_PORT} --mode ${MODE} --mtu ${MTU} --sndwnd ${SNDWND} --rcvwnd ${RCVWND} --crypt none --dscp 46
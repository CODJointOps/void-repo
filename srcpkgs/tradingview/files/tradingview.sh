#!/bin/sh
# --no-sandbox is required when running outside the snap environment.
# Redirect output: without a tty the write triggers EPIPE and crashes the app.
exec /opt/tradingview/tradingview --no-sandbox "$@" >/dev/null 2>&1

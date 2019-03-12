#!/bin/bash
ULTIMO_ID="$(cat /home/jbarradas/SRC/ultimo_id.txt)"
ALERT_SCRIPT="/home/jbarradas/SRC/alert_server.sh"

$ALERT_SCRIPT $ULTIMO_ID


#!/bin/bash

#Si aparece un msg con este criterio de busqueda se enviará por telegram
CRITERIO="CRITICAL"
BITACORA_FILE="$(cat /usr/local/nagios/var/nagios.log)"
BITACORA_FILE_CRI="$($BITACORA_FILE | grep $CRITERIO)"
DIRECTORIO_ULT_ID="/home/jbarradas/SRC/ultimo_id.txt"
#Es el último ID registrado desde que se envio el último mensaje por telegram.
ID_MAYOR="$1"
#Es el directorio donde se encuentra el script para enviar el mensaje
ENVIA_TELEGRAM="/home/jbarradas/SRC/telegram.sh"
for renglon in "$BITACORA_FILE_CRI"; do
	IDS_CRITICOS="$(echo $renglon | egrep -o [0-9]{10})"
	for id in $IDS_CRITICOS;do
		if [ $ID_MAYOR -lt $id ]; then
			MSG_ERROR="$(cat $BITACORA_FILE | grep $CRITERIO | egrep $id)"
			$ENVIA_TELEGRAM "$MSG_ERROR"
			#Se actualiza el último ID
			echo $id > $DIRECTORIO_ULT_ID
		fi
	done
done
exit

Este script de bitacora sólo se ha probado con NAGIOS.

Se debe adaptar los scripts para poder usarlo en equipos diferentes indicando la carpeta donde se encuentra el log de NAGIOS y los scripts mismos.

Al final hay que configurar un cron, en nuestro caso se configuro de la siguiente manera:

	#Tarea para enviar un mensaje cada que falle ping con 192.168.1.113
	*/1 * * * * /home/jbarradas/SRC/cron_alert.sh

@JABM 12 de marzo del 2019

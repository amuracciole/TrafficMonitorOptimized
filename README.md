# TrafficMonitorOptimized

Trabajo final para la asignatura Miniproyectos - Universidad Politécnica de Madrid (ETSIT)

AUTORES: Leonardo Bascopé y Andrés Muracciole

Aplicación Traffic Monitor para controador RyU. Se realizaron optimizaciones para obtención del ancho de banda de los canales de una red en tiempo real.

1) Levantar el escenario mediante el script Script_MINPRO_ON.sh

![Escenario](https://github.com/amuracciole/TrafficMonitorOptimized/blob/master/Escenario.png)

2) En caso de que seaa la primera vez que se debe correr el script Script_MINPRO_newscenario.sh para generar el archivo Script_MINPRO_newscenario.py

3) En caso de que ya exista el archivo del punto 2, hay que levantar el controlador mediante el script Script_MINPRO_controlador.sh

4) Aplicar politicas de QoS para estipular canales de 100 Mbps. Para ello ejecutar el script Script_MINPRO_QoS.sh

## Pruebas de BANDWIDTH

![Captura](https://github.com/amuracciole/TrafficMonitorOptimized/blob/master/Captura.png)

Para simular estas pruebas se puede hacer mediante iperf.

En H2: "iperf -s -i 1 -u"

En H1: "iperf -c 10.1.2.3 -i 1 -u -b 50000000"

Para simular 2 iperf de 50 Mbps en sumultaneo desde H1: "iperf -c 10.1.2.3 -i 1 -u -b -P 2"

## Pruebas Packet Loss y Delay

Este codigo no tiene implementado estos cálculos pero en el archivo Memoria se encuentra el teórico del mismo.
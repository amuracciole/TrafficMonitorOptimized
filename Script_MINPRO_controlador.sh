#!/bin/bash
echo "\n---> Levantar controlador con traffic monitor y app de QoS<---"
sleep 1
cd
ryu-manager ryu.app.rest_qos ryu.app.qos_simple_monitor_13_minpro ryu.app.rest_conf_switch
sleep 5

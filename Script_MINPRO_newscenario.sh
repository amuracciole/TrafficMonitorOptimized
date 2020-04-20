#!/bin/bash
echo "\n---> Levantar controlador y traffic monitor <---"
sleep 1
cd
sudo ovs-vsctl set Bridge SD-WAN_EDGE1 protocols=OpenFlow13
sudo ovs-vsctl set Bridge SD-WAN_EDGE2 protocols=OpenFlow13
sudo ovs-vsctl set-manager ptcp:6632
sudo sed '/OFPFlowMod(/,/)/s/)/, table_id=1)/' ryu/ryu/app/simple_monitor_13_minpro.py > ryu/ryu/app/qos_simple_monitor_13_minpro.py
cd ryu/
sudo python ./setup.py install
sleep 5

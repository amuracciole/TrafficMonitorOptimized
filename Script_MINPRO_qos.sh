#!/bin/bash
echo "\n---> Políticas de QoS <---"
sleep 1
cd
curl -X PUT -d '"tcp:127.0.0.1:6632"' http://localhost:8080/v1.0/conf/switches/0000000000000700/ovsdb_addr
echo "\n---> OK <---"
curl -X POST -d '{"port_name": "MPLS_NETWORK-e1", "type": "linux-htb", "queues": [{"max_rate": "100000000"}]}' http://localhost:8080/qos/queue/0000000000000700
echo "\n"
curl -X POST -d '{"port_name": "INTERNET-e1", "type": "linux-htb", "queues": [{"max_rate": "100000000"}]}' http://localhost:8080/qos/queue/0000000000000700
echo "\n"
curl -X PUT -d '"tcp:127.0.0.1:6632"' http://localhost:8080/v1.0/conf/switches/0000000000000800/ovsdb_addr
echo "\n---> OK <---"
curl -X POST -d '{"port_name": "MPLS_NETWORK-e2", "type": "linux-htb", "queues": [{"max_rate": "100000000"}]}' http://localhost:8080/qos/queue/0000000000000800
echo "\n"
curl -X POST -d '{"port_name": "INTERNET-e2", "type": "linux-htb", "queues": [{"max_rate": "100000000"}]}' http://localhost:8080/qos/queue/0000000000000800
sleep 5

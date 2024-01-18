#!/bin/bash

NODE_IP="255.255.255.255"
MASSA_WALLET_ADDRESS="AU12...abcd"

jsonExporterConfigPath="jsonexporter/config.yml"
prometheusConfigPath="prometheus/prometheus.yml"

# jsonexporter config
sed -i "s/YOUR_MASSA_ADDRESS/$MASSA_WALLET_ADDRESS/" "$jsonExporterConfigPath"
# prometheus config
sed -i "s/YOUR_NODE_IP/$NODE_IP/" "$prometheusConfigPath"

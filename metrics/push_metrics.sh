#!/bin/bash
aws cloudwatch put-metric-data --namespace "Custom/OnPremApp" \
    --metric-name "Latency" --value 120.5 --unit "Milliseconds" \
    --dimensions "Server=OnPrem-App-Server-1"

#!/bin/bash
while true; do
    date >>/log/test.txt 2>&1
    docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}">>/log/test.txt 2>&1
    sleep 5
done
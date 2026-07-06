#!/bin/bash

echo "================================="
echo "EC2 Monitoring Report"
echo "Date: $(date)"
echo "====================================="


echo ""
echo "Running Services"
systemctl list-units --type=service --state=running
echo""
echo "CPU Usage:"
top -bn1 | grep "Cpu(S)"


echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "================================"

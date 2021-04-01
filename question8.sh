



#!/bin/bash

echo "Operatings system name: ";uname -s
cat /etc/os-release | grep "NAME" | head -n 1
echo "  "
echo "Processor Information: "
cat /proc/cpuinfo | grep "model name"
echo "  "
echo "Main Memory details:"
cat /proc/meminfo | grep "MemTotal"
echo "  "
echo "Kernal version: "
uname -r
echo "  "
echo "ram :"
cat/etc/ram-size | grep "ram"
echo"  "





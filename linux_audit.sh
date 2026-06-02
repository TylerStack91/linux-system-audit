#!/bin/bash

echo "=============================="
echo " Linux System Audit"
echo "=============================="
echo

echo "---- System Information ----"
hostnamectl
echo

echo "---- Current User ----"
whoami
id
echo

echo "---- Network Information ----"
ip addr
echo

echo "---- Listening Ports ----"
ss -tulnp
echo

echo "---- Disk Usage ----"
df -h
echo

echo "---- Memory Usage ----"
free -h
echo

echo "---- Running Services ----"
systemctl --type=service --state=running
echo

echo "---- Top Running Processes ----"
ps aux --sort=-%mem | head -10
echo

echo "Audit complete."

#!/bin/bash
sudo sed 's^\[.*\]^^g' /etc/httpd/logs/error_log | sed 's^\, referer: [^\n]*^^g' | sort | uniq -c | sort -n >> /home/centos/error_reports/errors_$(date +%F_%H%M).txt
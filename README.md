# CloudWatch Monitoring for On-Prem App

This repo provides scripts to monitor an on-premises application using Amazon CloudWatch.

## Features:
- CloudWatch Agent for system metrics (CPU, memory, disk)
- Custom latency & API error metrics using AWS SDK & CLI
- Terraform setup for CloudWatch Alarms

## Setup Instructions:
1. Install AWS CLI & configure credentials
2. Deploy CloudWatch Agent: `bash cloudwatch-agent/install.sh`
3. Push custom metrics: `python3 metrics/push_metrics.py`
4. Deploy monitoring with Terraform: `terraform apply`

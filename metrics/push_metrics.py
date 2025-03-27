import boto3
import datetime

# AWS CloudWatch client
cloudwatch = boto3.client('cloudwatch', region_name='us-east-1')

# Custom metric data
response = cloudwatch.put_metric_data(
    Namespace='Custom/OnPremApp',
    MetricData=[
        {
            'MetricName': 'Latency',
            'Dimensions': [
                {'Name': 'Server', 'Value': 'OnPrem-App-Server-1'}
            ],
            'Timestamp': datetime.datetime.utcnow(),
            'Value': 120.5,
            'Unit': 'Milliseconds'
        }
    ]
)

print("Metric sent:", response)

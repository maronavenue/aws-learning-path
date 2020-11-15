# This sample script for reading SQS messages from S3 Event Notification feature works but needs improvement

import boto3
import json

sqs = boto3.resource('sqs')
queue = sqs.get_queue_by_name(QueueName='my-test-queue')
response = queue.receive_messages(AttributeNames=['All'])
message = json.loads(response[0].body)

# TODO: Add try-catch since this message structure assumes there is always an object (e.g. PutObject event)
stripped_message = message['Records'][0]
s3_event = stripped_message['eventName']
s3_bucket = stripped_message['s3']['bucket']['name']
s3_object = stripped_message['s3']['object']['key']

print(f"{s3_event} event with {s3_bucket}/{s3_object} object received.")
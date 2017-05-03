'''Simple module to publish an SNS Message'''

import boto3

sns = boto3.resource('sns')


def notify_complete(topic_arn, request_id):
    topic = sns.Topic(topic_arn)
    topic.publish(Message='Copy job %s is complete' % request_id)

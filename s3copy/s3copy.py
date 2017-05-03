'''Module to perform copy from one S3 key to another'''
import boto3


def copy_key(source, dest, bucket_name):
    s3 = boto3.resource('s3')
    bucket = s3.Bucket(bucket_name)
    copy_source = {
        'Bucket': bucket_name,
        'Key': source
    }
    obj = bucket.Object(dest)
    obj.copy(copy_source)

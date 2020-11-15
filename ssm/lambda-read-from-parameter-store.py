import boto3
import os

print("SSM Parameter Store Demo using Python SDK")

# TODO: Configure IAM role from basic Lambda execution to add read-only access to SSM
def lambda_handler(event, context):
    '''Gist: https://gist.github.com/maronavenue/b8a7629f27c8896fef141ca5a6e730b7'''

    ssm = boto3.client("ssm")

    # TODO: Define your env var to manage different configurations such as environments
    MY_ENV = os.environ["MY_ENV"]
    
    # TODO: Copy sample test parameters below and create them on SSM Parameter Store (Note: Use SecureString for password)
    raw_my_username = ssm.get_parameter(Name=f"/sandbox/{MY_ENV}/username")
    raw_my_password = ssm.get_parameter(Name=f"/sandbox/{MY_ENV}/password", WithDecryption=True)
    
    my_username = raw_my_username['Parameter']['Value']
    my_password = raw_my_password['Parameter']['Value']
    
    print(f"Username: {my_username}")
    print(f"Password: {my_password}")
    
    return f"Successfully fetched credentials on {MY_ENV} environment = {my_username}:{my_password}"
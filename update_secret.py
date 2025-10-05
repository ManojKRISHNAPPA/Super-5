import os
import boto3
from botocore.exceptions import ClientError

def update_secret(secret_name, secret_value, region_name='us-east-1'):
    client = boto3.client('secretsmanager', region_name=region_name)

    try:
        # Try to update the secret
        response = client.update_secret(
            SecretId=secret_name,
            SecretString=secret_value
        )
        print(f"✅ Secret '{secret_name}' updated successfully.")
        return response

    except ClientError as e:
        if e.response['Error']['Code'] == 'ResourceNotFoundException':
            # If secret doesn't exist, create it
            print(f"⚠️ Secret '{secret_name}' not found. Creating a new one.")
            response = client.create_secret(
                Name=secret_name,
                SecretString=secret_value
            )
            print(f"✅ Secret '{secret_name}' created successfully.")
            return response
        else:
            raise e

if __name__ == "__main__":
    secret_name = os.environ.get('SECRET_NAME')
    secret_value = os.environ.get('SECRET_VALUE')
    region = os.environ.get('AWS_REGION', 'us-east-1')

    if not secret_name or not secret_value:
        raise ValueError("Missing SECRET_NAME or SECRET_VALUE environment variables.")

    update_secret(secret_name, secret_value, region)
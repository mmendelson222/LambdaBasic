#!/bin/bash -e
#
# package-s3 - Package a lambda function and upload it to S3
#              Also upload the clouldformation template.
#

# Settings

    function=lambdabasic
    s3_bucket=mm-test-xfer
    s3_zip_file=s3://$s3_bucket/lambda/$function.zip
    s3_template_file=s3://$s3_bucket/cloudformation/$function.template

# Create ZIP file and upload to S3
    lambda_zip_file=./$function.zip

    7z a $lambda_zip_file $lambda_function_file app.js
	7z a $lambda_zip_file node_modules/async/

    #zip -q -r $lambda_zip_file $lambda_function_file app.js
	
    aws s3 cp --acl public-read $lambda_zip_file $s3_zip_file

# Upload CloudFormation template to S3

    aws s3 cp --acl public-read $function.template $s3_template_file

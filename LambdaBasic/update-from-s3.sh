#!/bin/bash -e
#
# package-update - update the lambda code only, directly from S3
# ALREADY Created ZIP file and uploaded to S3

# Settings

    function=lambdabasic
    s3_bucket=mm-test-xfer
	s3_key=lambda/$function.zip
    s3_zip_file=s3://$s3_bucket/$s3_key

# Update function code 
	aws lambda update-function-code \
		--function-name  $LB_FUNCTION \
		--s3-bucket $s3_bucket \
		--s3-key $s3_key

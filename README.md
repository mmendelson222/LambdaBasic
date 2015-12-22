# LambdaBasic
Basic template for an AWS Lambda program

Make sure youare running AT LEAST visual studio 2013, and have the following installed. 
* NPM
* AWS CLI (command line)
* Node.js tools VS Extension
* AWSToolkit VS Extension

Download the solution and open it in VS.  

Look here for more details: https://blogs.aws.amazon.com/net/post/Tx381XNNQALP8BA/AWS-Lambda-Support-in-Visual-Studio

This project started as an OOTB AWS Toolkit Lambda project, and a few features have been added.

### Deployment using S3 and CloudFormation
Included are a sh file which packages the code, then uploads the code plus a CloudFormation template s3.  Invoke the template to create the Lambda. 


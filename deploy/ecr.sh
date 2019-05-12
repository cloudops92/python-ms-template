#!/usr/bin/env bash


aws_region=$1
repository_name=$2
tag=$3

aws_region=$(aws configure get region)
aws_account=$(aws sts get-caller-identity --query 'Account' --output text)

{
    aws ecr create-repository --region ${aws_region} --repository-name ${repository_name}
}

docker tag ${repository_name}:latest ${aws_account}.dkr.ecr.us-east-1.amazonaws.com/${repository_name}:${tag}
$(aws ecr get-login --region ${aws_region})
docker push ${aws_account}.dkr.ecr.${aws_region}.amazonaws.com/${repository_name}:${tag}
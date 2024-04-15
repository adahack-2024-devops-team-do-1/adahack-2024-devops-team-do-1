#!/bin/bash

install_aws_cli() {
    if ! command -v aws &> /dev/null
    then
        echo "AWS CLI not found. Installing..."
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        echo "AWS CLI installed successfully."
    else
        echo "AWS CLI is already installed."
    fi
}

configure_aws_cli() {
    echo "Configuring AWS CLI..."
    aws configure
    echo "AWS CLI configured."
}

deploy_cloudformation() {
    TEAM_NAME="do-1"
    STACK_NAME="${TEAM_NAME}-stack"
    TEMPLATE_FILE="app.yml"

    echo "Deploying CloudFormation stack..."
    aws cloudformation deploy \
        --template-file $TEMPLATE_FILE \
        --stack-name $STACK_NAME \
        --capabilities CAPABILITY_IAM \
        --parameter-overrides TeamName=$TEAM_NAME
    echo "CloudFormation stack deployed successfully."
}

install_aws_cli
configure_aws_cli
deploy_cloudformation
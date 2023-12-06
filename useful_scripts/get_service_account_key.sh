#!/bin/bash

# Create a service account with the given name and role and download the key to the current directory
# Command: ./get_service_account_key.sh <service_account_name> <role>

service_account_name=$1
role=$2

gcloud config set project "$PROJECT_ID"
gcloud iam service-accounts create "$service_account_name"
gcloud projects add-iam-policy-binding "$PROJECT_ID" --member="serviceAccount:$service_account_name@$PROJECT_ID.iam.gserviceaccount.com" --role="$role"
gcloud iam service-accounts keys create "$service_account_name-key.json" --iam-account "$service_account_name@$PROJECT_ID.iam.gserviceaccount.com"

#!/usr/bin/env bash

if [ $# -ne 2 ]
then
  echo "Lambda Function Upload (or lfu for short) is a handy utility to archive and upload"
  echo "Lambda Functions"
  echo ""
  echo "Usage: lfu zip_file_name (without .zip) lambda_function_name"
  echo "Example: lfu MyArchive some_cool_function_name"
  exit 1
fi

rm $1.zip
zip -r $1.zip .
aws lambda update-function-code --function-name $2 --zip-file fileb://$1.zip
rm $1.zip

echo "Uploaded $1.zip to $2 Lambda Function successfully."
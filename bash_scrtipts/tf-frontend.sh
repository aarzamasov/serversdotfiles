#!/bin/sh
touch backend.tf
touch data.tf
touch main.tf
touch outputs.tf
touch provider.tf


cat <<EOF > backend.tf
terraform {
  backend "s3" {
    bucket         = ""
    key            = ""
    region         = ""
    dynamodb_table = ""
  }
}
EOF

cat <<EOF > data.tf
data "terraform_remote_state" "changeme" {
  backend = "s3"

  config {
    bucket = ""
    key    = "env:/\${terraform.workspace}/changeme.tfstate"
    region = ""
  }
}
EOF
cat <<EOF > provider.tf
provider "aws" {
  region =  ""
  profile = "$AWS_PROFILE"
}
EOF

echo "frontend for terraform was created."
#!/bin/sh
touch README.md
touch main.tf
touch outputs.tf
touch variables.tf
touch FILES.md
touch INOUT.md
touch version.tf
touch data.tf


cat <<EOF > version.tf
terraform {
  required_version = ">= 0.11.5"
}
EOF

echo "backend for terraform was created."


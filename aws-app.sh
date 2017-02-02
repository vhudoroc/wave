#!/bin/bash

#set -x
set -e


wget https://releases.hashicorp.com/terraform/0.8.5/terraform_0.8.5_linux_amd64.zip

unzip terraform_0.8.5_linux_amd64.zip -d /usr/local/sbin


terraform apply

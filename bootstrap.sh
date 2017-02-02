#!/bin/bash

#set -x
set -e


apt-get update
apt-get install -y git python-pip

git clone https://github.com/wvchallenges/opseng-challenge-app.git
cd opseng-challenge-app
pip install -r requirements.txt
gunicorn app:app

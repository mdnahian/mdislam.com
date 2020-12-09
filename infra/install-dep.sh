#!/bin/bash

INSTALL_DIR=/opt/www
APP_NAME=mdislam.com
rm -rf ${INSTALL_DIR}/${APP_NAME}
mkdir -p ${INSTALL_DIR}

sudo apt update
sudo apt install -y python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools python3-venv
git clone https://github.com/mdnahian/${APP_NAME}.git ${INSTALL_DIR}/${APP_NAME}
mkdir -p ${INSTALL_DIR}/venv
python3 -m venv ${INSTALL_DIR}/venv/${APP_NAME}
${INSTALL_DIR}/venv/${APP_NAME}/bin/pip install -r ${INSTALL_DIR}/${APP_NAME}/web/requirements.txt


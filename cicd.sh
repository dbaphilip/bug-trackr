#!/bin/bash

cd /root/bug-trackr
git pull https://github.com/dbaphilip/bug-trackr.git

source /root/.nvm/nvm.sh
npm ci
npm run build
systemctl restart trackr
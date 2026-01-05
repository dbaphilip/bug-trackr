#!/bin/bash

cd /root/bug-trackr
git pull https://github.com/dbaphilip/bug-trackr.git

source /root/.nvm/nvm.sh
npm ci
npx prisma migrate deploy
npx prisma generate
npm run build
init 6
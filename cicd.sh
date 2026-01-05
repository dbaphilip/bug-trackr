#!/bin/bash

cd /root/trackr
git pull https://github.com/dbaphilip/bug-trackr.git

source /root/.nvm/nvm.sh
npm ci
npx prisma migrate deploy
npx prisma generate
npm run build
systemctl restart trackr
echo "******************"
echo "*** Ci/Cd done ***"
echo "******************"
sleep 9


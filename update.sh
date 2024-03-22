#!/bin/bash

now=$(date +"%Y-%m-%d_%H-%M-%S")

curl --insecure -m 30 -o "domains" "$DOMAIN_URL"
curl --insecure -m 30 -o "ipaddress_isp" "$IP_URL"
curl --insecure -m 30 -o "situs_judi.txt" "$SITUS_JUDI"


git config user.name "Skiddle-Git"
git config user.email "160487326+Skiddle-Git@users.noreply.github.com"
git add .
git commit -m "Updated on $now"
git rebase
git push -u origin main

cd ..
echo "Script completed successfully."

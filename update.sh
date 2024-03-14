#!/bin/bash

FILE_NAME="$(date +"%Y-%m-%d")"

rm domains
if [ -e "$FILE_NAME" ]; then
    rm "$FILE_NAME"
fi

curl --insecure -o "domains" "$SOURCE_URL"
curl --insecure -o "ipaddress_isp" "https://trustpositif.kominfo.go.id/assets/db/ipaddress_isp"


git config user.name "Skiddle-Git"
git config user.email "160487326+Skiddle-Git@users.noreply.github.com"
git add .
git commit -m "Update"
git rebase
git push -u origin main

cd ..
echo "Script completed successfully."

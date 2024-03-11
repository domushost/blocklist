#!/bin/bash

FILE_NAME="$(date +"%Y-%m-%d")"

rm domains
if [ -e "$FILE_NAME" ]; then
    rm "$FILE_NAME"
fi

curl --insecure -o "domains" "$SOURCE_URL"

git add domains
git commit -m "Update"
git config user.name "Skiddle-Git"
git config user.email "160487326+Skiddle-Git@users.noreply.github.com"
git rebase
git push -u origin main

cd ..
echo "Script completed successfully."

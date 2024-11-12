#!/bin/bash

export DATE=$(date +"%Y-%m-%dT%H:%M:%SZ")
echo "Starting commit with $DATE"

# sed -i "s/key: 1/key: \${DATE}/g" values.yaml
yq eval '.loans.podAnnotations.key = "'"$DATE"'"' -i values.yaml

git commit -am "Update $DATE"
git push origin main

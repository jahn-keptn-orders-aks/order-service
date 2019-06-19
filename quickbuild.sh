#!/bin/bash

export GITHUB_ACCOUNT=$1
export VERSION_TAG=$2
export IMAGE=$GITHUB_ACCOUNT/keptn-orders-order-service:$VERSION_TAG

clear
if [ $# -lt 2 ]
then
  echo "missing arguments. Expect ./quickbuild.sh <registry> <tag>"
  exit 1
fi

#./mvnw clean package
./mvnw clean package -Dmaven.test.skip=true


echo ""
echo "Ready to push to: $IMAGE"
echo "Be sure your are logged in, if not use 'docker login'"
read -rsp "Press ctrl-c to abort. Press any key to continue"

docker build -t $IMAGE .
docker push $IMAGE
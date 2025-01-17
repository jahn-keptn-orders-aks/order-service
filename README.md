# Overview

This repo has code for a Java spring-boot micro service.

Demo app credits go to: https://github.com/ewolff/microservice-kubernetes

The application is built and run using Jenkins.  See ```Jenkinsfile``` in this repo.

This application will be packaged in a Docker image.  See ```Dockerfile``` in this repo

NOTE: Known limitation of running locally and there is an open TODO to update the code.  Would like to have a Docker compose file as to start everything required.  So you can build images and deploy to kubernetes and the servies will be resolved by Kubernestes DNS.

# Developer Notes

## Pre-requisites

The following programs to be installed
* Java 1.8
* Maven
* IDE such as VS Code

This service needs to pull in data from the customr and catalog services, so they must be running.

## Build and Run Locally

1. run these commands
  ```
  ./mvnw clean package -Dmaven.test.skip=true
  java -jar target/*.jar
  ```
2. access application at ```http://localhost:8080```

# Utilities

## 1. quicktest

unix shell script that loops and calls the app URL.  Just call:

```./quicktest.sh <catalog base url>```

For example:

```./quicktest.sh http://localhost:8080```

## 2. quickbuild

unix shell script that builds and pushes docker image named: keptn-orders-order-service:tag.  Just call:

```./quickbuild.sh <registry> <tag>```

For example:

```./quickbuild.sh robjahn 1```
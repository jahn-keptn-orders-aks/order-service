# Overview

This repo has code for a Java spring-boot micro service.

Demo app credits go to: https://github.com/ewolff/microservice-kubernetes

This application will be packaged in a Docker image.  See ```Dockerfile``` in this repo

NOTE: application expects ```http://catalog-service:8080/catalog/``` as an available end-point or it will not run.

# Developer Notes

## Pre-requisites

The following programs to be installed
* Java 1.8
* Maven
* IDE such as VS Code

## Build and Run Locally

1. run these commands
  ```
  ./mvnw clean package -Dmaven.test.skip=true
  java -jar target/*.jar
  ```
2. access application at ```http://localhost:8080/order/line```

# Utilities

## 1. quicktest

unix shell script that loops and calls the app URL.  Just call:

```./quicktest.sh <order base url>```

For example:

```./quicktest.sh http://localhost:8080```

## 2. quickbuild

unix shell script that builds and pushes docker image named: keptn-orders-order-service:tag.  Just call:

```./quickbuild.sh <registry> <tag>```

For example:

```./quickbuild.sh robjahn 1```

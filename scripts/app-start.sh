#!/bin/bash

java -XX:+PrintFlagsFinal \
  -Djava.security.egd=file:/dev/./urandom -jar /app.jar
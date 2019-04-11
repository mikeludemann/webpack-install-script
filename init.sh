#!/bin/bash

echo "Checking webpack"

if webpack -v > /dev/null; then
  echo "webpack is already installed."
else
  echo "installing webpack"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing webpack - global"
      npm install -g webpack
      npm install -g webpack-cli
      npm install -g webpack-monitor
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi
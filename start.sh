#!/bin/bash

# Start Firefox service (from base image)
/init &

# Wait for Firefox service to be ready
sleep 5

# Start nginx
nginx -g "daemon off;"
#!/bin/sh

site='http://ipecho.net/plain'
echo "WAN IP is" $(wget -qO- $site)

#!/bin/bash

# Simple script to test if a website is up

if [ $# -ne 1 ]
  then
    echo "[!] Usage: ./is_it_up website.com"
    echo "[!] Example: ./is_it_up google.com"
fi

if [ $# -eq 1 ]
  then
    SITE=$1
    TEST=$(curl -s https://isitdown.site/api/v3/"$SITE" | jq '.isitdown')
    if [ "$TEST" = "true" ]; then
        echo -e "\033[31;5mYes\033[0m"
    else
        echo -e "\033[32mNo\033[0m"
    fi
fi

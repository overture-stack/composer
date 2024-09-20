#!/bin/sh

# Check for Song
echo -e "\033[1;35m[7/10]\033[0m Checking if Song is ready" 
until [ "$(curl -s -o /dev/null -w "%{http_code}" "http://song:8080/isAlive" -H "accept: */*")" = "200" ]; do
    echo -e "\033[1;36mSong:\033[0m Not yet reachable, checking again in 20 seconds"
    sleep 20
done
echo -e "\033[1;32mSuccess:\033[0m Song is now reachable"
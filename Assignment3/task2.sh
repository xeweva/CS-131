#!/bin/bash

echo The list of people who worked on Sunday are:
grep -E "Sun " data/lastf23.fake | awk '{print $1}' | sort | uniq
echo Kudos to these people for putting in the work

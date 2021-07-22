#!/bin/bash
JOIN_URL="${1}"

if [ -z "$JOIN_URL" ]; then
    echo "Usage: $0 JOIN_URL";
    exit 1;
fi;

#Create temp dir
mkdir -m 777 /tmp/bigbluebutton-docker-test-join-moderator/ &> /dev/null || true

docker run --rm -v/tmp/bigbluebutton-docker-test-join-moderator/:/debug/ bigbluebutton-docker-test-join-moderator "${JOIN_URL}" && echo 1 || echo 0

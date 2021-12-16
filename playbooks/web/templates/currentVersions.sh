#!/bin/sh
WEB=$(git -C {{ nginx.webPath }} rev-parse --short HEAD)
GIT=$(git --version)
NGINX=$(nginx -v 2>&1)
cat << EOF
{
    "versions": {
        "web": "$WEB",
        "git": "${GIT/git version /}",
        "nginx": "${NGINX:21:6}"
    }
}
EOF
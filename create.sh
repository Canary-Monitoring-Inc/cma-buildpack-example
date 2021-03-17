#!/usr/bin/env bash
#
#  Creates the heroku app with the correct buildpack
#
set -euo pipefail
appName=$1

heroku create $appName --buildpack https://github.com/Canary-Monitoring-Inc/cma-buildpack.git#initial-buildpack-code

cat <<EOF
Application "$appName" for the Canary Monitoring Agent created.

The only mandatory setting is the Canary Monitoring API Key. You can enter it here to
write it in the application's configuration in heroku, or Ctrl-C out and do that
in a different way. The name is `CANARY_API_TOKEN`.

EOF

read api_key && heroku config:set -a $appName CANARY_API_TOKEN=$api_key

cat <<EOF

All set. You can now "git push heroku main" to deploy, or do more configuration first.
EOF

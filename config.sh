#
#  This file can contain configuration variables
#  that are included when the monitoring agent
#  runs. By default, it is empty, but you an
#  for example redirect output, change the
#  listening port, and do other things here to
#  tweak the agent's behaviour.
#
#  Do not store secrets here!
#
#  The location to fetch configuration from
#CANARY_API_HOST=appapi.canarymonitor.com
#
#  The location to send telemetry data to
#CANARY_TELEMETRY_HOST=telemetry.canarymonitor.com
#
#  See the source code for various individual monitor
#  settings you can add here. These depends on whether
#  you want to run private synthetic monitoring and
#  which monitors you want to run. Note that only
#  non-secret settings should land in this file, everything
#  else should be in Heroku's config vars.

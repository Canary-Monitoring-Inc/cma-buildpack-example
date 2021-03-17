# CMA Buildpack Example

This repository contains an example for the [Canary Monitoring Agent Heroku Buildpack](https://github.com/Canary-Monitoring-Inc/cma-buildpack).

The buildpack will deploy a Canary Monitoring Agent instance, you can then send
telemetry data to there from your other dynos.

A [create script](create.sh) will perform the necessary setup steps, after which
a regular push will get everything setup. There is a [configuration file](config.sh)
where you can override settings, this file will be read at run-time. If you have
settings in this configuration file and in the Heroku application's configuration
variables, the latter will "win". Please keep secrets, like the API key, in
the Heroku config variables and only add non-sensitive information to the
configuration file.

For questions, contact [Canary Support](mailto:support@canarymonitor.com).

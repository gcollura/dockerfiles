#!/bin/sh

set -e

if [ -z "$CRON_JOB" ]; then
    echo >&2 'error: missing CRON_JOB environment variable'
    exit 1
fi

echo "$CRON_JOB 1>&2 /var/log/cron/job.log" | crontab -

exec "$@"

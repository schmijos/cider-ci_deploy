#!/usr/bin/env bash
set -eux
cd {{lein_service_app_dir}}
export LEIN_FAST_TRAMPOLINE=yes
export JAVA_OPTS="-Xmx{{lein_service_xmx_mb_value}}m"
lein with-profile production trampoline run \
    >> {{lein_service_log_dir}}/console.log 2>&1

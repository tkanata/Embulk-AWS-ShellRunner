#!/bin/sh
set -e
# source ./.embulk_path

java -XX:+AggressiveOpts -XX:+UseConcMarkSweepGC -jar /root/.embulk/bin/embulk/embulk-0.11.0.jar run src/sample/config.yml.liquid --log-level debug

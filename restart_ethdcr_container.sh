#! /bin/bash

dir=$(dirname $0)

$dir/stop_claymore_container.sh && $dir/run_ethdcr_container.sh

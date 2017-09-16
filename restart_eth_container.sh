#! /bin/bash

dir=$(dirname $0)

$dir/stop_claymore_container.sh && $dir/run_eth_container.sh

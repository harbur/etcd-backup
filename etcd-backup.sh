#!/bin/bash

KEYS=$(etcdctl ls --recursive -p)

for KEY in $KEYS; do
  # Skip etcd directories
  if [ "${KEY: -1}" == "/" ]; then continue; fi

  echo $KEY=$(etcdctl get $KEY)
done
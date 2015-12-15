#!/bin/bash

KEYS=$(etcdctl ls --recursive -p)
KEYS+=$(etcdctl ls --recursive -p _coreos.com)

for KEY in $KEYS; do
  # Skip etcd directories
  if [ "${KEY: -1}" == "/" ]; then continue; fi

  echo $KEY=$(etcdctl get $KEY)
done

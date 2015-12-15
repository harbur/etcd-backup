# etcd-backup
Script-based etcd backup

It runs a recursive get on the etcd keys and outputs a properties-style format of key/values.

ps. empty directories are ignored

## Installation

```
curl https://raw.githubusercontent.com/harbur/etcd-backup/master/etcd-backup.sh > etcd-backup.sh
chmod +x etcd-backup.sh
```

## Usage

In order to backup your etcd key/values:

```
./etcd-backup.sh > etcd.properties
```

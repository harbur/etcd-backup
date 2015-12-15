# etcd-backup
Script-based etcd backup

It runs a recursive get on the etcd keys and outputs a properties-style format of key/values.

ps. empty directories are ignored

## Installation

```
curl https://raw.githubusercontent.com/harbur/etcd-backup/master/etcd-backup.sh > etcd-backup.sh
curl https://raw.githubusercontent.com/harbur/etcd-backup/master/etcd-restore.sh > etcd-restore.sh
chmod +x etcd-backup.sh etcd-restore.sh
```

## Usage

In order to backup your etcd key/values:

```
./etcd-backup.sh > etcd.properties
```

In order to restore your etcd key/values:

```
./etcd-restore.sh etcd.properties
```

or you can pass them using pipeline:

```
cat etcd.properties | ./etcd-restore.sh
```

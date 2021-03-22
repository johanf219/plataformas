#!/usr/bin/env bash
apt-get -y update
apt-get -y install nfs-kernel-server
sudo mkdir -p /mnt/nfs_share
sudo chown -R nobody:nogroup /mnt/nfs_share/
sudo chmod 777 /mnt/nfs_share/
test -f /etc/exports && echo "/mnt/nfs_share 192.168.33.0/24(rw,sync,no_subtree_check)" >> /etc/exports
sudo exportfs -a
sudo systemctl restart nfs-kernel-server

poweretcd
=========

PowerShell module for Etcd Cluster Management

PS C:\Users\User> Get-EtcdClusterMachines CoreOS1

name                          state                         clientURL                     peerURL
----                          -----                         ---------                     -------
CoreOS1                      follower                      http://CoreOS1:4001          http://CoreOS1:7001
CoreOS2                      follower                      http://CoreOS2:4001          http://CoreOS2:7001
CoreOS3                      leader                        http://CoreOS3:4001          http://CoreOS3:7001

PS C:\Users\User> Get-EtcdVersion CoreOS1

Server                                                      Version
------                                                      -------
coreos91                                                    etcd 0.4.6

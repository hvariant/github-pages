---
title: "Setting up ssh reverse proxy"
date: 2018-01-18
tags: [ssh, networking, proxy]
---

The scenario is as follows. You want to access machine A without public IP address, perhaps behind firewall or NAT.
You also have access to machine B with public IP address, such as a VPS.

In this case, you can setup a ssh reverse proxy so that you can access machine A thru machine B.

First, enable and start sshd service for both machines. On machine A, add the following to `/etc/ssh/sshd_config`

```
GatewayPorts clientspecified
```

and then restart sshd.

Second, add the public key of machine A to machine B's `authorized_keys`, and the public key of machine B to the same place
on machine A.

Finally, run the following command to setup the proxy:

```

#!/bin/bash

set -x

serverb="<remote-server-address>"
user="<user-on-remote-server>"
port="<local-machine-ssh-port>"
port_remote="<remote-machine-ssh-port>"

ssh -v -o ExitOnForwardFailure=yes -N -f -R 0.0.0.0:${port_remote}:localhost:${local} ${user}@$serverb
```

if the command runs successfully, then the proxy is established. Go ahead and test it.

To enable automatic reconnect, it's also possible to use `autossh` instead:

```
autossh -M 20000 -v -o ExitOnForwardFailure=yes -N -f -R 0.0.0.0:${port_remote}:localhost:${local} ${user}@$serverb
```

Reference: [this guide](https://toic.org/blog/2009/reverse-ssh-port-forwarding/)

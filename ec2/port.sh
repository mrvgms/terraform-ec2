#!/bin/bash -ex
 perl -pi -e 's/^#?Port 22$/Port 2222/' /etc/ssh/sshd_config
 systemctl restart sshd.service || systemctl restart ssh.service

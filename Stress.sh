## Install stress

#!/bin/bash
yum update -y
amazon-linux-extras install epel -y
yum install stress -y
# stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10s

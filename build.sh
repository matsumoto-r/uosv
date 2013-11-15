#!/bin/sh
set -e
sudo rm -rf osv
git clone https://github.com/cloudius-systems/osv.git
cd osv
git submodule init
git submodule update
cp ../osv_hack/config.json .
cp ../osv_hack/*.skel .
cp ../osv_hack/build.mk .
cp ../osv_hack/Makefile .
curl "https://13218147686985271975.googlegroups.com/attach/803b8d581b2fd003/nbd_client.py?part=2&view=1&vt=ANaJVrFCeOz59U-oZ1gU47Hz5vz9zP1cIYzumaLChBXXL2nqR6t56jEoVuTWxj2Rrqlea6ym4ddsKcUJPK37MY2D20z4rHwYhme7nDcGKxz3zqEz9Su9K30" > scripts/nbd_client.py
sudo make external all $*
cd -

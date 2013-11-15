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
curl "https://13218147686985271975.googlegroups.com/attach/803b8d581b2fd003/nbd_client.py?part=2&view=1&vt=ANaJVrEYcT1gZMydb5I1bK0jA1puWc90CoRGSOeFxC6DBdBhNqwhuIKHsUUaFZyj7xg_ZzR224ZFuVJ5mehx19ven6w4gnY8O3foU9pJVtMZXeuosdZIIL8" > scripts/nbd_client.py
sudo make external all $*
cd -

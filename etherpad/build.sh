#!/bin/bash


VERSION="1.9.1"

wget https://github.com/ether/etherpad-lite/archive/refs/tags/v${VERSION}.tar.gz

tar xf v${VERSION}.tar.gz

cd etherpad-lite-${VERSION}/


docker build --build-arg ETHERPAD_PLUGINS="ep_adminpads2 ep_author_neat2 ep_disable_chat ep_remove_savedrevision_right_side" --tag stncrn/etherpad:v${VERSION} .


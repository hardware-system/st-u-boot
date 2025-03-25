#!/bin/bash

#source /opt/st/stm32mp1/4.2.1-openstlinux-6.1-yocto-mickledore-mp1-v23.06.21/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi

#删除上层目录的编译文件
if [[ "$CLEAN" == "clean" ]]; then
  rm ../build/ ../deploy/ -rf
  exit 0
fi

#运行编译
make -f Makefile.sdk all -j$(($(nproc) + 1))

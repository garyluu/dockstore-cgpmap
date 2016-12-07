#!/bin/bash

set -uxe

rm -rf /tmp/downloads

mkdir -p /tmp/downloads $OPT/bin $OPT/etc $OPT/lib $OPT/share $OPT/site /tmp/hts_cache $R_LIBS

cd /tmp/downloads

# cgpBigWig
curl -sSL -o distro.zip --retry 10 https://github.com/cancerit/cgpBigWig/archive/0.3.0.zip
mkdir /tmp/downloads/distro
bsdtar -C /tmp/downloads/distro --strip-components 1 -xf distro.zip
cd /tmp/downloads/distro
./setup.sh $OPT
cd /tmp/downloads
rm -rf distro.zip /tmp/downloads/distro /tmp/hts_cache

# PCAP-core
curl -sSL -o distro.zip --retry 10 https://github.com/ICGC-TCGA-PanCancer/PCAP-core/archive/v3.3.4.zip
mkdir /tmp/downloads/distro
bsdtar -C /tmp/downloads/distro --strip-components 1 -xf distro.zip
cd /tmp/downloads/distro
./setup.sh $OPT
cd /tmp/downloads
rm -rf distro.zip /tmp/downloads/distro /tmp/hts_cache

# alleleCount
curl -sSL -o distro.zip --retry 10 https://github.com/cancerit/alleleCount/archive/v3.2.1.zip
mkdir /tmp/downloads/distro
bsdtar -C /tmp/downloads/distro --strip-components 1 -xf distro.zip
cd /tmp/downloads/distro
./setup.sh $OPT
cd /tmp/downloads
rm -rf distro.zip /tmp/downloads/distro

# cgpNgsQc
curl -sSL -o distro.zip --retry 10 https://github.com/cancerit/cgpNgsQc/archive/v1.3.0.zip
mkdir /tmp/downloads/distro
bsdtar -C /tmp/downloads/distro --strip-components 1 -xf distro.zip
cd /tmp/downloads/distro
./setup.sh $OPT
cd /tmp/downloads
rm -rf distro.zip /tmp/downloads/distro

rm -rf /tmp/downloads
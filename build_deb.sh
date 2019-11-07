#!/bin/bash

# Clear old pkg content
rm -rf deb/

# Create pkg
mkdir -p deb/DEBIAN/
mkdir -p deb/usr/share/rime-data/
# deb package related file
cp ./control ./postinst ./postrm deb/DEBIAN/
# taigi
cd ./taigi_pojhanlo_sujiphoat
cp \
	./taigi_pojhanlo.schema.yaml \
	./taigi_pojhanlo.dict.yaml \
	./taigi_pojhanlo.extended.dict.yaml \
	./taigi_pojhanlo.symbol.yaml \
	../deb/usr/share/rime-data/
# copyright
cd ..
cp ./LICENSE deb/DEBIAN/copyright

# Build pkg
rm -rf build/
mkdir build/
dpkg -b deb/ build/rime-taigi-poj-hanlo.deb


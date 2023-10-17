#!/bin/sh
pth=/usr/ports/ports
rp="core main multilib nonfree"
prt="$(ls ${pth}/$r)"

for r in $rp; do
	for p in $(ls $pth/$r); do 
		cd $pth/$r/$p
		pkgbuild -o
		pkgbuild -g
	done
done

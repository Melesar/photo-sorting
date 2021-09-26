#!/bin/sh

dir=${GUESTS_DIR:-Guests}

[ ! -d $dir ] && echo "Guests dir wasn't found" && exit

echo "" > people.txt

for d in $(ls $dir)
do
	echo "$(basename $d) $(ls $d | wc -l)" >> people.txt
done

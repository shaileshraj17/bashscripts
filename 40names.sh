#!/bin/bash

if [ $# -eq 0 ]; then

	echo "usage: $0 <shailesh> "
	exit 1

fi

name =$1

echo "Hello $name"

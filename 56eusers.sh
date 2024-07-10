#!/bin/bash

echo "Existing users:"
echo "---------------"
cut -d: -f1 /etc/passwd | sort

echo

echo "Existing groups:"
echo "----------------"
cut -d: -f1 /etc/group | sort


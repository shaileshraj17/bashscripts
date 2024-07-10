#!/bin/bash

env_var="PATH"

if [ -z "${!env_var}" ]; then
	echo " environment variable '$env_var' is not set "

   else
	   echo " environment variable '$env_var' is: '${!env_var}' "
fi

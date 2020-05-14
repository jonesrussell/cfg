#!/bin/zsh

archive=false
attributes_only=false
verbose=false

cp_opts=()
$archive && cp_opts+=( -a )
$attributes_only && cp_opts+=( --attributes-only )

pwd=$(pwd)
cmd="cp ${cp_opts} ${pwd}/$1 ${pwd}/$2"

echo "COMMAND: ${cmd}" 

cd ${pwd}
/bin/cp ${1} ${2} 

if [[ "${?}" != "0" ]]
then
    /bin/cp -r ${1} ${2} 
    exit 0 
else
    echo "Good."
    exit 0
fi


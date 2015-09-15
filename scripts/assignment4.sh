#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

usage()
{
cat << EOF
Usage:
EOF
}

clean_build()
{
    echo Cleaning 
}

compile_build()
{
    echo Compile
}

generate_jar() 
{
    echo Making jar
}

upload()
{
    echo Uploading
}

while getopts "dcjuh" opt 
do
    case $opt in 
    d) 
        clean_build
        ;;
    c)
        compile_build
        ;;
    j)
        generate_jar
        ;;
    u)
        upload
        ;;
    h)
        usage
        exit 0
        ;;
    esac
done


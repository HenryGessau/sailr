#!/bin/bash

repo_url="https://github.com/craicoverflow/sailr"
release_tag=master
script_file="${HOME}/.git-templates/hooks/commit-msg"

function init {
    if [ ! -z $1 ]; then
        echo "Unsupported argument '$1'"
    fi

    destination="${PWD}/.git/hooks"

    cp $script_file "${destination}/commit-msg"
    chmod u+x "${destination}/commit-msg"

    echo -e "\nInstalled Sailr as \e[33mcommit-msg\033[0m hook in \e[32m$destination\033[0m."
    echo "For usage see https://github.com/craicoverflow/sailr#usage"
}

init $1

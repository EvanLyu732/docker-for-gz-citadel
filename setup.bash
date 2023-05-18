#!/bin/bash
 
setup_docker_img() {
    echo "setting up gz citadel image"
    pushd ./docker > /dev/null;
        docker build  --progress=plain --network host -t gz-citadel-img .
    popd > /dev/null;
}

setup_docker_img
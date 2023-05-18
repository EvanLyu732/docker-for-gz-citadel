#!/bin/bash

update_submodule() {
    if ! [[ -d ./gz-citadel ]]; then
        git submodule update
    fi 
}
 
setup_docker_img() {
    echo "setting up gz citadel image"
    docker build --progress=plain --network host -t gz-citadel-img -f ./docker/Dockerfile .
}

run_container() {
    # img_id=$(docker images | awk 'FNR==2 {print $3}')
    # echo "img id is" $img_id
    container_id=$(docker container ls | grep gz-citadel-img)
    if [[ -z $container_id ]]; then
        echo "start container"
        docker rm -f gz-citadel-container
        docker run -it \
                   --name gz-citadel-container \
                   --network host \
                   gz-citadel-img \
                   /bin/bash
    fi 
}

main() {
    update_submodule
    setup_docker_img
    run_container
}

main
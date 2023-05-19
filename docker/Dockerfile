FROM ros:noetic
USER root

EXPOSE 7890
EXPOSE 7891

WORKDIR /home/code/
RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list; \
    echo "source /opt/ros/noetic/setup.bash --extend" >> /root/.bashrc
RUN gpg --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654; \
    gpg --export C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 | sudo tee /usr/share/keyrings/ros.gpg > /dev/null; \
    sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/ros.gpg] https://mirrors.ustc.edu.cn/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

RUN apt-get update && apt-get install -y \
    git  \
    curl \
    vim   \
    python3-vcstool \
    netcat

COPY ./gz-citadel/ ${WORKDIR}
RUN rm -rf .git; \ 
    git init; \
    git config --global http.proxy http://127.0.0.1:7890; \
    git config --global https.proxy http://127.0.0.1:7890; \
    vcs import < ./gazebodistro/collection-citadel.yaml; 



FROM ros:melodic-ros-base-bionic

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ar-track-alvar && \
    rm -rf /var/lib/apt/lists/*

FROM ros:noetic-ros-base-focal

RUN apt-get update && apt-get install -y git vim \
	ros-noetic-robot-localization \
    && rm -rf /var/lib/apt/lists/*

COPY . /opt/barracuda-localization

WORKDIR /opt

CMD ["/bin/bash", "/opt/barracuda-localization/entrypoint.sh"]

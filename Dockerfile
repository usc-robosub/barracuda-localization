FROM ros:noetic-ros-base-focal

COPY . /opt/barracuda-localization

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash", "/opt/barracuda-localization/entrypoint.sh"]

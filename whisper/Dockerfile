FROM nvidia/cuda:12.4.1-cudnn-runtime-ubuntu22.04

# Install Whisper
WORKDIR /usr/src
ARG WYOMING_WHISPER_VERSION='2.2.0'

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        python3 \
        python3-dev \
        python3-pip 
RUN pip3 install --no-cache-dir -U \
        setuptools
RUN python3 --version
RUN pip3 install --no-cache-dir \
        --extra-index-url https://www.piwheels.org/simple \
        "wyoming-faster-whisper @ https://github.com/rhasspy/wyoming-faster-whisper/archive/refs/tags/v${WYOMING_WHISPER_VERSION}.tar.gz" 

WORKDIR /
COPY run.sh ./

EXPOSE 10300


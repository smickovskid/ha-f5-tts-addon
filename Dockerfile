# Use Home Assistant's dynamic base image (depends on build.yaml)
ARG BUILD_FROM
FROM $BUILD_FROM as build

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-dev \
    build-essential \
    ninja-build \
    wget \
    git \
    python3.11-venv \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /venv && \
    /venv/bin/pip install --upgrade pip setuptools wheel && \
    /venv/bin/pip install torch==2.3.0 torchaudio==2.3.0 --extra-index-url https://download.pytorch.org/whl/cu118 && \
    git clone --depth 1 -b main https://github.com/SWivid/F5-TTS.git /app/F5-TTS && \
    /venv/bin/pip install -e /app/F5-TTS --no-cache-dir

COPY rootfs /

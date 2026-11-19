FROM gradle:7.6.6-jdk17

LABEL maintainer="KRCI Team"

# unpinned on purpose: pick up security fixes (exact pins break rebuilds)
# hadolint ignore=DL3008
RUN apt-get update && \
    apt-get install -y --no-install-recommends make && \
    rm -rf /var/lib/apt/lists/*

FROM debian:bookworm as website

RUN apt-get update && \
    apt-get install -y nodejs npm && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /srv/stopai/website

COPY website/package.json website/package-lock.json ./

RUN npm clean-install

COPY . .

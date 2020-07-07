# ---- base image ----
FROM node:current-slim

# ---- meta data ----
LABEL name="node-puppeteer"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

# ---- install latest chrome dev package and fonts ----
RUN apt-get update \
    && apt-get install -y g++ make python wget gnupg \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf \
      --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# ---- tell puppeteer to skip installing chromium ----
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# ---- Add user so we don't need --no-sandbox ----
RUN groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser \
    && mkdir -p /home/pptruser/Downloads \
    && chown -R pptruser:pptruser /home/pptruser

# ---- configure global node_modules path
ENV NPM_CONFIG_PREFIX=/home/pptruser/.npm-global \
    PATH=$PATH:/home/pptruser/.npm-global/bin

# ---- install puppeteer so it's available in the container ----
RUN npm install --global puppeteer

# ---- run everything as non-privileged user ----
USER pptruser

# ---- create app directory ----
WORKDIR /app
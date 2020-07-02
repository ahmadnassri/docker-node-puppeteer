# ---- base image ----
FROM node:current-alpine3.10

# ---- meta data ----
LABEL name="node-puppeteer"
LABEL maintainer="Ahmad Nassri <ahmad@ahmadnassri.com>"

# ---- install latest chromium ----
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont

# ---- tell puppeteer to skip installing chrome ----
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# ---- Puppeteer v1.19.0 works with Chromium 77 ----
RUN npm install puppeteer@1.19.0

# ---- avoid needing --no-sandbox ----
RUN addgroup -S pptruser && adduser -S -g pptruser pptruser \
    && mkdir -p /home/pptruser/Downloads /app \
    && chown -R pptruser:pptruser /home/pptruser \
    && chown -R pptruser:pptruser /app

# ---- run everything as non-privileged user ----
USER pptruser

# ---- create app directory ----
WORKDIR /app

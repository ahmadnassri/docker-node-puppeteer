# Node & Puppeteer Container

a slim container with both Node.js & Puppeteer

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![super linter][super-linter-img]][super-linter-url]
[![semantic][semantic-img]][semantic-url]

[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

## Usage

create a `docker-compose.yml` with the following:

``` yaml
version: '3'

services:
  puppeteer:
    image: ahmadnassri/node-puppeteer
    volumes:
      - ${PWD}:/app
```

> #### Volumes
>
> Map the the directory where will copy your application files to `/app`

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-node-puppeteer

[release-url]: https://github.com/ahmadnassri/docker-node-puppeteer/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-node-puppeteer

[super-linter-url]: https://github.com/ahmadnassri/docker-node-puppeteer/actions?query=workflow%3Asuper-linter
[super-linter-img]: https://github.com/ahmadnassri/docker-node-puppeteer/workflows/super-linter/badge.svg

[semantic-url]: https://github.com/ahmadnassri/docker-node-puppeteer/actions?query=workflow%3Arelease
[semantic-img]: https://badgen.net/badge/📦/semantically%20released/blue

[size-url]: https://hub.docker.com/r/ahmadnassri/node-puppeteer
[size-img]: https://badgen.net/docker/size/ahmadnassri/node-puppeteer

[docker-url]: https://hub.docker.com/r/ahmadnassri/node-puppeteer
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/node-puppeteer
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label

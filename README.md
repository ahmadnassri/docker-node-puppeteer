# Node & Puppeteer Container

[![][lint-badge]][lint-link]
[![][release-badge]][release-link]
[![][publish-badge]][publish-link]

[lint-badge]: https://github.com/ahmadnassri/docker-node-puppeteer/workflows/lint/badge.svg
[lint-link]: https://github.com/ahmadnassri/docker-node-puppeteer/actions?query=workflow:lint
[release-badge]: https://github.com/ahmadnassri/docker-node-puppeteer/workflows/release/badge.svg
[release-link]: https://github.com/ahmadnassri/docker-node-puppeteer/actions?query=workflow:release
[publish-badge]: https://github.com/ahmadnassri/docker-node-puppeteer/workflows/publish/badge.svg
[publish-link]: https://github.com/ahmadnassri/docker-node-puppeteer/actions?query=workflow:publish

a slim container with both [Node](https://nodejs.org/en/) & [Puppeteer](https://pptr.dev/)

## Flavors

The image is published to two registries:

- [Docker Hub](https://hub.docker.com/r/ahmadnassri/node-puppeteer)
- [GitHub Package Registry](https://github.com/ahmadnassri/docker-node-puppeteer/packages)

## Usage

create a `docker-compose.yml` with the following:

```yaml
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
>
> #### Image
>
> For GitHub Package Registry, use `image: docker.pkg.github.com/ahmadnassri/node-puppeteer/node-puppeteer`

> **WARNING**  
> DEPRECATED, please use [Playwright](https://playwright.dev/) instead

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

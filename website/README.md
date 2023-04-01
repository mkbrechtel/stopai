# This website is built with VuePress.

Just put your markdown files in this folder and they will appear on the website.

For detailed explanation on how things work, check out the [guide](https://v1.vuepress.vuejs.org/guide/) and [docs for vuepress](https://v1.vuepress.vuejs.org/).

## Run development server


### With Docker (recommended)
```bash
docker-compose up dev
```
go to http://localhost:8080

### Without Docker
```bash
yarn && yarn dev
```
go to http://localhost:8080

## Build static files

### With Docker (recommended)
```bash
docker-compose up --build build
```
go to http://localhost:8081
### Without Docker

```bash
yarn && yarn build
```
the static files are in the `.vuedist/dist` folder

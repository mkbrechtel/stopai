# first build the static page with vuepress
FROM node:18
WORKDIR /opt/stopai/website
COPY package.json yarn.lock ./
RUN yarn install --immutable
# fix error: digital envelope routines::initialization error ERR_OSSL_EVP_UNSUPPORTED
ENV NODE_OPTIONS=--openssl-legacy-provider
COPY . .
RUN yarn build

# in the second stage, we copy the static page to nginx so we can serve it directly from the docker image
FROM nginx
WORKDIR /usr/share/nginx/html
COPY --from=0 /opt/stopai/website/.vuepress/dist/ .

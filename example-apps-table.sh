#!/bin/sh

cat<<EOF
| Application | Build status |
|------------ | ------------ |
EOF

for app in \
    example-flask \
    example-expressjs-static \
    example-golang \
    example-prisma \
    example-express-prisma \
    example-remix-tailwind-application \
    example-mern-application \
    example-go-gin \
    example-fastapi \
    example-nestjs \
    example-expressjs \
    example-laravel \
    example-rails \
    example-nuxtjs \
; do
    stripped=$(echo $app | sed 's/example-//g')
    cat<<EOF
| [$stripped](https://github.com/koyeb/$app) | [![$app](https://github.com/koyeb/$app/actions/workflows/deploy.yaml/badge.svg)](https://github.com/koyeb/$app/actions)
EOF

done
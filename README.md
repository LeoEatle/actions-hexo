# actions-hexo
Github actions for building hexo static site

Simple and clean hexo CLI.

# Getting started

## Create .github/workflows/push.yml

```yml
name: github pages

on:
  push:
    branches:
    - master

jobs:
  build-deploy:
    runs-on: ubuntu-18.04
    steps:
    - uses: actions/checkout@master

    - name: build
      uses: leoeatle/actions-hexo@latest
      with:
        args: g

    - name: deploy
      uses: peaceiris/actions-gh-pages@v2.1.0
      env:
        ACTIONS_DEPLOY_KEY: ${{ secrets.ACTIONS_DEPLOY_KEY }}
        PUBLISH_BRANCH: gh-pages
        PUBLISH_DIR: ./public
```
FROM squidfunk/mkdocs-material:latest

LABEL maintainer="Dennis Irsigler <dennis@irsigler.cloud>"

RUN pip install --no-cache-dir \
  mkdocs-markmap \
  mkdocs-git-revision-date-plugin \
  mkdocs-autolinks-plugin

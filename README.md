# Personal Wiki

This repository is my public available collection of personal notes, examples and other documentation.

## Techstack

-   Markdown files
-   GitHub Pages
-   Mkdocs Material

## Development

```sh
# Clone the repository to a local folder
git clone https://github.com/dirsigler/wiki.git
git pull origin main

# Move into the repository
cd wiki

# Build the Docker Container
# containing all needed dependencies used a Plugins
docker build -t mkdocs-material:local .

# Run the Mkdocs-Material container locally with port-forwarding
docker run --rm -it -p 8000:8000 -v $(pwd):/docs mkdocs-material:local
```

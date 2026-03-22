# Personal GitHub Pages

This repository is used to develop and maintain a personal website built with GitHub Pages. 

The site is built using Jekyll and is designed to be tested locally before deployment.

## Overview

- Static site powered by Jekyll
- Compatible with GitHub Pages
- Local development supported via devcontainers

## Development Environment

This project is designed to build and test locally using devcontainer.

- Devcontainer with **Podman**
- Devcontainer with **Docker** (not tested, but should work)

## Project structure

```text
.
├── gh_pages/          # Jekyll site source
│   ├── _posts/        # Blog posts
│   ├── _config.yml    # Jekyll configuration
│   ├── index.md       # Homepage
│   └── ...
├── .devcontainer/     # Devcontainer configuration
├── Makefile           # Helper commands
└── README.md
```

## Running with Devcontainer

### Requirements

- VS Code
- Dev Containers extension
- Podman or Docker installed locally

### Steps

1. Clone this repository
2. Open the repository in VS Code
3. Press `Ctrl + Shift + P` and select `Dev Containers: Reopen in Container`

## Building and Serving website locally

```shell
make serve
```

To clean artifacts

```shell
make clean
```

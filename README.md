# Docker Machine

## Description

This is an image for [Docker Machine](https://github.com/docker/machine/) - built for your convenience!

## Usage

Put your credentials into a `.env` file in your home directory.

Example for Digital Ocean:

```
DIGITALOCEAN_ACCESS_TOKEN=
DIGITALOCEAN_IMAGE=coreos-stable
DIGITALOCEAN_SIZE=s-1vcpu-1gb
DIGITALOCEAN_REGION=fra1
DIGITALOCEAN_SSH_USER=core
DIGITALOCEAN_TAGS=docker
```

Run this command on any host that has Docker installed:

```
docker run --user $UID:$GID --rm --interactive --tty --env-file=$HOME/.env --volume $HOME/.docker:/.docker nomaster/docker-machine
```

# Toolbox

[![Build Status](https://travis-ci.org/joeygibson/toolbox.svg?branch=master)](https://travis-ci.org/joeygibson/toolbox)

This is a Docker container to be used as a [CoreOS Toolbox](https://github.com/coreos/toolbox).

It is based on Debian Jessie, and contains the following additional tools:

* Netcat
* Vim
* HTop
* Curl
* Git
* Sparkyfish
* Docker
* Docker Compose

as well as some aliases that I like:

    alias ds="ls -lFGskh"
    alias z=clear
    alias more=less
    alias m=less
    alias top=htop
    alias fig=docker-compose

## Using

Edit your `~/.toolboxrc` file to include these lines:

    TOOLBOX_DOCKER_IMAGE=joeygibson/toolbox
    TOOLBOX_DOCKER_TAG=latest

Then run `toolbox` with whatever options you need.

## Setup In cloud-config

If you are setting up your CoreOS machine through cloud-config, you can add this, and not worry
about manually editing your `~/.toolboxrc`.

    #cloud-config
    write_files:
      - path: /home/core/.toolboxrc
        owner: core
        content: |
          TOOLBOX_DOCKER_IMAGE=joeygibson/toolbox
          TOOLBOX_DOCKER_TAG=latest
          TOOLBOX_USER=root

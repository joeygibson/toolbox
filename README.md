# Toolbox

[![Build Status](https://travis-ci.org/joeygibson/toolbox.svg?branch=master)](https://travis-ci.org/joeygibson/toolbox)

This is a Docker container to be used as a [CoreOS Toolbox](https://github.com/coreos/toolbox).

It is based on Debian Jessie, and contains the following additional tools:

* Netcat
* HTop
* Curl
* Git
* Sparkyfish
* Docker
* Docker Compose

## Using

Edit your `~/.toolboxrc` file to include these lines:

    TOOLBOX_DOCKER_IMAGE=joeygibson/toolbox
    TOOLBOX_DOCKER_TAG=latest

Then run `toolbox` with whatever options you need.


[![Project status](https://badgen.net/badge/project%20status/stable%20%26%20actively%20maintaned?color=green)](https://github.com/homecentr/docker-opensmtpd/graphs/commit-activity) [![](https://badgen.net/github/label-issues/homecentr/docker-opensmtpd/bug?label=open%20bugs&color=green)](https://github.com/homecentr/docker-opensmtpd/labels/bug) [![](https://badgen.net/github/release/homecentr/docker-opensmtpd)](https://hub.docker.com/repository/docker/homecentr/opensmtpd)
[![](https://badgen.net/docker/pulls/homecentr/opensmtpd)](https://hub.docker.com/repository/docker/homecentr/opensmtpd) 
[![](https://badgen.net/docker/size/homecentr/opensmtpd)](https://hub.docker.com/repository/docker/homecentr/opensmtpd)

![CI/CD on master](https://github.com/homecentr/docker-opensmtpd/workflows/CI/CD%20on%20master/badge.svg)


# Homecentr - opensmtpd

## Usage

```yml
version: "3.7"
services:
  opensmtpd:
    build: .
    image: homecentr/opensmtpd
```

## Environment variables

| Name | Default value | Description |
|------|---------------|-------------|
| SMTP_ARGS |  | Command line arguments passed to the `smtpd` executable. |

## Exposed ports

| Port | Protocol | Description |
|------|------|-------------|
| 25 | TCP | SMTP |

> Other ports may be exposed by configuring the `smtpd.conf` config file.

## Volumes

| Container path | Description |
|------------|---------------|
| /config/smtpd.conf | Opensmtpd main [configuration file](https://man.openbsd.org/smtpd.conf). |

## Security
The container is regularly scanned for vulnerabilities and updated. Further info can be found in the [Security tab](https://github.com/homecentr/docker-opensmtpd/security).

### Container user
The container does NOT support privilege drop due to the internal code of OpenSMTP which explicitly checks for UID and fails unless it's 0. 
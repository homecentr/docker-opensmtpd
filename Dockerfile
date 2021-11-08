FROM homecentr/base:3.4.0-alpine

RUN apk add --no-cache \
    opensmtpd=6.8.0p2-r0

COPY ./fs /

# smtpd must be run as root therefore disable the privilege drop functionality
RUN rm /etc/cont-init.d/10-init.sh
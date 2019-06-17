#!/bin/bash

time make && cp -v objs/bin/mtproto-proxy /build/ && cd /build && sha256sum mtproto-proxy > SHA256SUMS


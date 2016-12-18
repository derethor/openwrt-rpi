#!/bin/bash
$(docker ps -a --format "docker rm {{ .ID }}")


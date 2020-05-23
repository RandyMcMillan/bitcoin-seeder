#!/usr/bin/env bash
docker build -f main-net.ubuntu.docker --rm -t bitcoin-seeder . &
wait
docker run -f -it --network host --name main-net-bitcoin-seeder bitcoin-seeder . &
wait

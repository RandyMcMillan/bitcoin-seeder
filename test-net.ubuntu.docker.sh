#!/usr/bin/env bash
docker build -f test-net.ubuntu.docker --rm -t bitcoin-seeder . &
wait
docker run -f -it --network host --name test-net-bitcoin-seeder bitcoin-seeder . &
wait

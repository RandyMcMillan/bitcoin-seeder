#!/usr/bin/env bash
docker build -t bitcoin-seeder . &
wait
docker run -it --network host --rm --name local-bitcoin-seeder bitcoin-seeder &
wait

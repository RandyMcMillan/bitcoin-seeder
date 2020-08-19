.PHONY: help before-install init
-include Makefile

help:
	@echo ''

before-install:
	bash -c './scripts/before_install.sh'

init: before-install
#bash -c 'dig -t NS bitcoincore.dev'
	bash -c 'dig -t NS bitcoincore.dev | awk "{print $$1}" | awk "NR==14"'
#bash -c 'dig -t NS bitcoincore.dev | awk "{print $$3}" | awk "NR==15"'
#bash -c 'dig -t NS bitcoincore.dev | awk "{print $$3}" | awk "NR==16"'

build: init dnsseed

run: build
	bash -c './dnsseed -h seeder.bitcoincore.dev -n ns1.digitalocean.com. -m admin.bitcoincore.dev'

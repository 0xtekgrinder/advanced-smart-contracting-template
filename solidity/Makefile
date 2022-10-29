end-tests:

unit-tests:

test: end-tests unit-tests

deploy:

install:
	forge install

local:
	anvil

fork:
	anvil --fork-url ${JSON_RPC_URL}

.PHONY: end-tests unit-tests test deploy install

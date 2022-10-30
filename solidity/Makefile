end-tests:

unit-tests:

test: end-tests unit-tests

deploy-local:
	forge script script/Counter.s.sol:DeployCounterScript --fork-url $LOCAL_RPC_URL --broadcast -vvvv

deploy-testnet:
	forge script script/Counter.s.sol:DeployCounterScript --rpc-url $TESTNET_RPC_URL --broadcast --verify -vvvv

deploy-mainet:
	forge script script/Counter.s.sol:DeployCounterScript --rpc-url $MAINET_RPC_URL --broadcast --verify -vvvv

install:
	forge install

local:
	anvil

fork:
	anvil --fork-url ${JSON_RPC_URL}

.PHONY: end-tests unit-tests test deploy install

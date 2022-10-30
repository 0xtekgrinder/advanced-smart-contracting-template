// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "openzeppelin-contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import "openzeppelin-contracts/proxy/transparent/ProxyAdmin.sol";

import * as Counter1 from "../src/v1/Counter.sol";
import * as Counter2 from "../src/v2/Counter.sol";

contract DeployCounterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Counter1.Counter counter = new Counter1.Counter();
        ProxyAdmin admin = new ProxyAdmin();
        TransparentUpgradeableProxy proxy = new TransparentUpgradeableProxy(address(counter), address(admin), "");

        vm.stopBroadcast();
    }
}

contract UpgradeCounterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Counter2.Counter counter = new Counter2.Counter();
        // ProxyAdmin admin = ProxyAdmin();
        // TransparentUpgradeableProxy proxy = TransparentUpgradeableProxy();

        // admin.upgrade(proxy, address(counter));

        vm.stopBroadcast();
    }
}

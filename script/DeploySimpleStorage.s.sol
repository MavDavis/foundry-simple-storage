// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
contract DeploySimpleStorage is Script {
    function run() external {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage{value:1 ether}();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
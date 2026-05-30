// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {NeonBeach} from "../code/NeonBeach.sol";

contract NeonBeachTest is Test {
    NeonBeach public neonBeach;
    address public owner = address(1);

    function setUp() public {
        // On se fait passer pour l'owner pour déployer le contrat
        vm.prank(owner);
        neonBeach = new NeonBeach();
    }

    function testContractNameAndSymbol() public view {
        // On vérifie que le nom et le symbole sont corrects
        assertEq(neonBeach.name(), "TokenizerArt");
        assertEq(neonBeach.symbol(), "NEON");
    }
}
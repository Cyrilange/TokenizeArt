// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {NeonBeach} from "../code/NeonBeach.sol";

contract NeonBeachTest is Test {
    NeonBeach public neonBeach;
    address public owner = address(1);
    address public user1 = address(2);

    function setUp() public {
        
        vm.prank(owner);
        neonBeach = new NeonBeach();
    }

    function testContractNameAndSymbol() public view {
        
        assertEq(neonBeach.name(), "TokenizerArt");
        assertEq(neonBeach.symbol(), "NEON");
    }

    function testMintSucces() public view {
        string memory sampleUri = "ipfs://bafybeiardzgyf3ifrcixf7ywmb2jvqzymyxipzyd55xsts5ueta3vt72fy";
        
    
        vm.prank(user1);
        neonBeach.safe_mint(user1, 0, sampleUri);


        assertEq(neonBeach.balanceOf(user1), 1);
        assertEq(neonBeach.ownerOf(0), user1);
        assertEq(neonBeach.tokenURI(0), sampleUri);
    }

}
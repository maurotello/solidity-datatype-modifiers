// Hay 3 tipos de variables en Solidity
// local:
// declarado dentro de una función
// no almacenado en la cadena de bloques
// estado:
// declarado fuera de una función
// almacenado en la cadena de bloques
// global:
// proporciona información sobre la cadena de bloques

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Variables {
    // State variables se almacenan en la cadena de bloques.
    string public text = "Hello";
    uint256 public num = 123;

    function doSomething() public view {
        // Las variables locales no se guardan en la cadena de bloques.
        uint256 i = 456;

        // Algunas variables global
        uint256 timestamp = block.timestamp; // Marca de tiempo del bloque actual (block timestamp)
        address sender = msg.sender; // dirección de la cuenta que llama
    }
}

// contrato simple que puede obtener, incrementar y decrementar
// la tienda de recuento en este contrato.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Counter {
    uint public count;

    // Función para obtener el recuento actual
    function get() public view returns (uint) {
        return count;
    }

    // Función para incrementar el contardor en 1 
    function inc() public {
        count += 1;
    }

    // Función para decrementar el contardor en 1 
    function dec() public {
        count -= 1;
    }
}
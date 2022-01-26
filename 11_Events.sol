// Los eventos permiten iniciar sesión en la cadena de bloques Ethereum. Algunos casos de uso de eventos son:
// Escuchar eventos y actualizar la interfaz de usuario

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Event {
    // Declaración de evento
    // Se pueden indexar hasta 3 parámetros.
    // Los parámetros indexados le ayudan a filtrar los registros por el parámetro indexado
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}

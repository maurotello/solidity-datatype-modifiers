// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/*
Vulnerabilidad
block.timestamp puede ser manipulado por mineros con las siguientes restricciones

No se puede sellar con una hora anterior a la de su padre.
no puede estar muy lejos en el futuro

Técnicas preventivas
No use block.timestamp para una fuente de entropía y número aleatorio
*/

/*
Roulette es un juego en el que puedes ganar todo el Ether en el contrato.
si puede enviar una transacción en un momento específico.
Un jugador necesita enviar 10 Ether y gana si el block.timestamp % 15 == 0.
*/

/*
1. Implemente la ruleta con 10 Ether
2. Bob ejecuta un poderoso minero que puede manipular la marca de tiempo del bloque.
3. Bob establece el block.timestamp en un número en el futuro que es divisible por
    15 y encuentra el hash del bloque de destino.
4. El bloque de Bob se incluye con éxito en la cadena, Bob gana el
    Juego de ruleta.
*/

contract Roulette {
  
    uint256 public pastBlockTime;

    constructor() payable {}

    function spin() external payable {
        require(msg.value == 10 ether); // debe enviar 10eth para jugar
        require(block.timestamp != pastBlockTime); // solo una transacción por bloque

        pastBlockTime = block.timestamp;

        if (block.timestamp % 15 == 0) {
            (bool sent, ) = msg.sender.call{value: address(this).balance}("");
            require(sent, "Error al enviar Ether");
        }
    }
}

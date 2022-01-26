// ¿Cuánto ether necesitas pagar por una transacción?
// Pagas gas gastado * precio del gas cantidad de éter, donde
// el gas es una unidad de cálculo
// gas gastado es la cantidad total de gas usado en una transacción
// el precio del gas es la cantidad de éter que estás dispuesto a pagar por gas

// Las transacciones con mayor precio del gas tienen mayor prioridad para
// ser incluidas en un bloque.
// Se reembolsará el gas no gastado.

// Límite de gas
// Hay 2 límites superiores para la cantidad de gas que puede gastar
// límite de gas (cantidad máxima de gas que está dispuesto a usar para
// su transacción, establecido por usted)
// límite de gas del bloque (cantidad máxima de gas permitida en un bloque,
// establecida por la red)

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Gas {
    uint256 public i = 0;

    // Usar todo el gas que envía hace que su transacción falle.
    // Los cambios de estado se deshacen.
    // El gas gastado no se reembolsa.
    function forever() public {
        // Aquí ejecutamos un bucle hasta que se gaste todo el gas
        // y la transacción falla
        while (true) {
            i += 1;
        }
    }
}

// Solidity program to demonstrate view functions
// The view functions are read-only function,
// which ensures that state variables cannot be modified after calling them.

// Programa de Solidity para demostrar funciones de vista (view)
// Las funciones view son funciones de solo lectura,
// lo que garantiza que las variables de estado no se puedan
// modificar después de llamarlas.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// Definimos un contrato
contract TestView {
    // Declaramos variables de estado
    uint256 public num1 = 2;
    uint256 public num2 = 4;

    // Definición de la función de vista para
    // calcular producto y suma de 2 números
    function getResult() public view returns (uint256 product, uint256 sum) {
        // uint256 num1 = 10;
        // uint256 num2 = 16;
        product = num1 * num2;
        sum = num1 + num2;
    }
}

// Programa de Solidity para demostrar funciones puras
// Las funciones puras no leen ni modifican las variables de estado,
// que devuelve los valores solo usando los parámetros pasados a la función
// o variables locales presentes en él.

contract TestPure {
    // Defining pure function to calculate product and sum of 2 numbers
    function getResult() public pure returns (uint256 product, uint256 sum) {
        uint256 num1 = 2;
        uint256 num2 = 4;
        product = num1 * num2;
        sum = num1 + num2;
    }
}

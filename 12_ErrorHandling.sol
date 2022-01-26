// Un error deshará todos los cambios realizados en el estado durante una transacción.

// Puede lanzar un error llamando a require, revert o assert.

// require se usa para validar entradas y condiciones antes de la ejecución.
// revert es similar a require. Consulte el código a continuación para obtener más detalles.
// assert se usa para verificar el código que nunca debe ser falso.
// Una afirmación fallida probablemente signifique que hay un error.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;



contract Error {

    uint256 public x = 10;

    function testRequire(uint256 _i) public pure {
        // Require debe usarse para validar condiciones como:
        // - entradas
        // - condiciones antes de la ejecución
        // - devuelve valores de llamadas a otras funciones
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        // Revertir es útil cuando la condición a verificar es compleja.
        // Este código hace exactamente lo mismo que el ejemplo anterior
        
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;

    function testAssert() public view {
        // Assert solo debe usarse para probar errores internos,
        // y comprobar invariantes.

        // Aquí afirmamos que num siempre es igual a 0
        // ya que es imposible actualizar el valor de num
        assert(num == 0);
    }
}

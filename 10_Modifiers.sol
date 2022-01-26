// Los modificadores son códigos que se pueden ejecutar antes
// y/o después de la llamada a una función.
// Los modificadores se pueden utilizar para:

// Restringir acceso
// Validar entradas
// Protegerse contra el hack de reentrada

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract FunctionModifier {
    // Usaremos estas variables para demostrar cómo usar modificadores.
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        // Establecer el remitente de la transacción como propietario del contrato.
        owner = msg.sender;
    }

    // Modificador para comprobar que la persona que llama es la propietaria del contrato.
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        // El Underscore es un carácter especial que solo se usa dentro
        // un modificador de función y le dice a Solidity que
        // ejecuta el resto del código.
        _;
    }

    // Los modificadores pueden tomar entradas. Este modificador comprueba que el
    // la dirección pasada no es la dirección cero.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner)
        public
        onlyOwner
        validAddress(_newOwner)
    {

        owner = _newOwner;

    }

    // Los modificadores se pueden llamar antes y / o después de una función.
    // Este modificador evita que se llame a una función mientras
    // todavía se está ejecutando.
    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}

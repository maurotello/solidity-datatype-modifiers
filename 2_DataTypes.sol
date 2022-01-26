// Aquí presentamos algunos tipos de datos primitivos disponibles en Solidity.
// https://docs.soliditylang.org/en/v0.8.7/types.html
// boolean
// uint
// int
// address

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Primitives {
    bool public boo = true;

    /*
    uint significa entero sin signo, es decir, enteros no negativos
     diferentes tamaños están disponibles
        uint8   de 0 a 2 ** 8 - 1
        uint16  de 0 a 2 ** 16 - 1
        ...
        uint256 de 0 a 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123; // uint es un alias para uint256

    /*
    Se permiten números negativos para tipos int.
     Al igual que uint, hay diferentes rangos disponibles desde int8 a int256
    */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int public i = -123; // int es lo mismo que int256

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // Valores predeterminados
    // Las variables no asignadas tienen un valor predeterminado
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}

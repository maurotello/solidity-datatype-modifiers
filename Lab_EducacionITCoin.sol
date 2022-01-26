// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract EducacionITCoin {
    uint256 private _emision;
    address private _creador;
    mapping(address => uint256) private _balances;

    constructor(uint256 emision) {
        _emision = emision;
        _creador = msg.sender;
        _balances[_creador] = _emision;
    }

    modifier soloCreador() {
        require(
            msg.sender == _creador,
            "Solo el creador puede llamar a esta funcion."
        );
        _;
    }

    function enviarFondos(address destino, uint256 fondo) public soloCreador {
        _balances[_creador] = _balances[_creador] - fondo;
        _balances[destino] = _balances[destino] + fondo;
    }

    function getBalance(address destino) public view returns (uint256) {
        return _balances[destino];
    }
}

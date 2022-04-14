// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Transferencia {
    
    constructor() payable {
        
    }
    
    function transferenciaPorSend(address destino, uint monto) public returns(bool) {
        bool salida = payable(destino).send(monto);
        return salida;
    }
    
    function transferenciaPorTransfer(address destino, uint monto) public {
        payable(destino).transfer(monto);
    }

    // La mayor diferencia es que a la función call se le puede setiar el limite de
    // de gas se está dispuesto a pagar por la transacción
    
    function transferenciaPorCall(address destino, uint monto) public returns (bool) {
        //Respuesta almacena el valor que devuelva la funcion de otro contrato 
        // (si es que se interactua con otro contrato)
        //gas es el limite 
        (bool salida, bytes memory respuesta) = destino.call{value:monto, gas: 1000}("");
        return salida;
    }
}
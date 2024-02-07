/*
SPDX-License-Identifier: CC-BY-4.0
(c) Desenvolvido por Arthur Cassiano
This work is licensed under a Creative Commons Attribution 4.0 International License.
*/
pragma solidity 0.8.19;

// endereço do contrato: 0x787eA302F372BDb1Fbf5E83973e04f6E1B807F8e
// Realizei as 3 interações possíveis com a Account: 0x4B8720679a99B0d7AD42471cbA535F7307aB7231

/// @author Arthur Cassiano
/// @title Solidity exercício Faucet
contract Faucet {

    mapping(address=>uint8) public MappingPrincipal;
    uint8 numeroInteracao;

    event ocorreuUmaInteracao(address responsavel, uint8 quantidade);

    // @notice Fornece a quem chamar a transacao um valor
    // @dev incrementa um no acumulador das interacoes, atribuindo o numero da interacao a um endereco ethereum.
    // @return numero de interacoes realizadas
    function executarInteracao() public returns (uint256) {
        require(MappingPrincipal[msg.sender]<3, "Sinto muito. Voce so pode realizar 3 interacoes");
        require(numeroInteracao < 5, "A oferta se esgotou");
        numeroInteracao++;
        MappingPrincipal[msg.sender] = numeroInteracao;
        emit ocorreuUmaInteracao(msg.sender, numeroInteracao);
        return numeroInteracao;
    }

}

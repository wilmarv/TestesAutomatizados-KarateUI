Feature: Cenario de Teste:Testando API Compras.

Background: Executa antes de cada teste
    * def url_base = "http://localhost:3000"
    

Scenario:   Caso de Teste: Somatorio do valor dos produtos no carrinho 

    * def somatoriaValor = 0
    * def somatorio = function(produto) {  somatoriaValor += produto.preco }
    
    Given url url_base 
    And path "/carrinho"
    When method get
    Then status 200
    And def valorTotalJson = response[0].compraTotal
    
    * karate.forEach(response[0].listaCompra, somatorio)
    And assert somatoriaValor == valorTotalJson
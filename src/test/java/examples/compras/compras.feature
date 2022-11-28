Feature: Testando API Compras.

Background: Executa antes de cada teste
    * def url_base = "http://localhost:3000"
    

Scenario: Somatorio do valor dos produtos no carrinho 
    Given url url_base 
    And path "/carrinho"
    When method get
    Then status 200
    And def valorTotalJson = response[0].compraTotal
    * def somatoriaValor = 0
    * def somatorio = function( produto) { somatoriaValor += produto.preco}
    * karate.forEach(response[0].listaCompra, somatorio)
    And assert somatoriaValor == valorTotalJson
    

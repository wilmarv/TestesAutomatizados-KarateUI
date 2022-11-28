Feature: Testando API Usuarios.

Background: Executa antes de cada teste
    * def url_base = "http://localhost:3000"
    
    
Scenario: Listando Usuarios ja cadastrados
    Given url url_base 
    And path "/usuarios"
    When method get
    Then status 200
    And print response

Scenario: Procurando pelo usuario Lucas retorando o Usuario Lucas
    Given url url_base 
    And path "/usuarios?nome=Lucas%20Guitton"
    When method get
    Then status 200
    And match response[0].nome == "Lucas Guitton"

Scenario: Cadastrando Usuario novo
    Given url url_base 
    And path "/usuarios"
    And form field id = 5
    And form field nome = "Arthur"
    And form field email = "Arthur@email.com"
    When method post
    Then status 201

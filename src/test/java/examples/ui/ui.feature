Feature: Scenario de Teste: Comportamento de uma pagina web

Background:
  * configure driver = { type: 'chrome', showDriverLog: true }
# * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }
# * configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true }
# * configure driver = { type: 'chromedriver', showDriverLog: true }
# * configure driver = { type: 'geckodriver', showDriverLog: true }
# * configure driver = { type: 'safaridriver', showDriverLog: true }
# * configure driver = { type: 'iedriver', showDriverLog: true, httpConfig: { readTimeout: 120000 } }

Scenario: Caso de Teste: Tentativa de logar com usuario não existente e retornar com msg de error
  * def msgError = "Epic sadface: Username and password do not match any user in this service";

  Given driver 'https://www.saucedemo.com/'
  And input('#user-name', 'nickLogin')
  And input('#password', 'senhaSecreta')
  When click("input[name=login-button]")
  Then match html('.error-message-container') contains msgError

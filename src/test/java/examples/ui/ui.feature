Feature: browser automation 1

Background:
  * configure driver = { type: 'chrome', showDriverLog: true }
# * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }
# * configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true }
# * configure driver = { type: 'chromedriver', showDriverLog: true }
# * configure driver = { type: 'geckodriver', showDriverLog: true }
# * configure driver = { type: 'safaridriver', showDriverLog: true }
# * configure driver = { type: 'iedriver', showDriverLog: true, httpConfig: { readTimeout: 120000 } }

Scenario: try to login to github
and then do a google search

  Given driver 'https://www.saucedemo.com/'
  And input('#user-name', 'nickLogin')
  And input('#password', 'senhaSecreta')
  When click("input[name=login-button]")
  Then match html('.error-message-container') contains 'Epic sadface: Username and password do not match any user in this service'

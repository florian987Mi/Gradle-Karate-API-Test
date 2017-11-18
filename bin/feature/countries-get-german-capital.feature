Feature: Check german capital request against json file

  Background:
    # refer to variables defined in the karate-config.js and to be used for this feature
   # * configure proxy internalProxy
    #* url baseUrl

  Scenario: Check capital of Germany
    Given url 'https://restcountries.eu/rest/v2/alpha/col'
    When method get
    Then status 200
    And match $ == read('expected-response.json') # compare response with content of json file
    #print out some values
   	# * def myJson = { foo: 'bar', baz: [1, 2, 3] }
   	# * print 'the value of myJson is:', myJson
		#* def myJson = read('expected-response.json')
		#* print 'the value of myJson is:', myJson

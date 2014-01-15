# TDD with node.js and other userfull libraries (application template)

### Instruments

* **async** and **request** for model logic
* **mocha** wonderful JavaScript test framework
* **should** expressive and helpful assertion library
* **sinon** stubs and mocks for JavaScript
* **coffee-script** 'cause I realy loved it :thumbsup:

### Usage

* Install all dependencies by running `npm i`
* `[sudo] npm i mocha -g` (for ability run mocha binary)
* `[sudo] npm i nodemon -g` for run our fake app (takes script name from **package.json**)
* `npm test` will run all tests from **tests/** folder (simply runs `mocha --compilers coffee:coffee-script tests/**/*_test.coffee`)
* `nodemon` for app running                  

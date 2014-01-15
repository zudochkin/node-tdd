request = require('request')
sinon = require('sinon')
should = require('should')

getProfile = require('./../../lib/script')

describe 'User Profile', ->
  before (done) ->
    sinon.stub(request, 'get').yields null, null, JSON.stringify(login: 'vredniy')

    done()

  after (done) ->
    request.get.restore()

    done()

  it 'can get user profile', (done) ->
    getProfile 'vredniy', (err, result) ->
      return done(err)  if err
      request.get.called.should.be.equal true
      result.should.not.be.empty

      done()

request = require('request')
async = require('async')

getProfile = (username, cb) ->
  async.waterfall [(callback) ->
    request.get "https://api.github.com/users/#{username}", (err, response, body) ->
      return callback(err)  if err
      callback null, body

  ], cb

module.exports = getProfile

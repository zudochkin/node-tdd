getProfile = require('./lib/script')

getProfile 'vredniy', (err, result) ->
  throw err if err

  console.log result

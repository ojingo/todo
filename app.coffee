# Setup Express.js
global.express = require('express')
global.app = express()
require("#{__dirname}/src/configuration")

# Set up a route for the homepage:
require("#{__dirname}/src/controllers/home_controller")

# Start server:
app.listen(3000)
console.log(" Express server listening on port 3000 in %s mode", app.settings.env)

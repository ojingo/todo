# Setup Express.js
global.express = require('express')
global.app = express()
require("#{__dirname}/src/configuration")

# Set up the database
require("#{__dirname}/src/models/database")

# Set up a route for the homepage:
require("#{__dirname}/src/controllers/home_controller")

# Set up todo controller:
require("#{__dirname}/src/controllers/todos_controller")

# Start server:
app.listen(3000)
console.log(" Express server listening on port %s 3000 in %s mode", app.port, app.settings.env)

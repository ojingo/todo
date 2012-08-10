# this controller handles server requests for todos

# Get a list of todos
app.get '/api/todos', (req, res) ->
	console.log "app get was called!"
	res.json [{}]

# Post a list of todos
app.post '/api/todos', (req, res) ->
	res.json {}

# Get specific todos
app.get '/api/todos/:id', (req, res) ->
	res.json {}

# Update specific todos
app.put '/api/todos/:id', (req, res) ->
	res.json {}

# Delete specific todos
app.delete '/api/todos/:id', (req, res) ->
	res.json {}
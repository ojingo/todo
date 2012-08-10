# this controller handles server requests for todos

# Get a list of todos
app.get '/api/todos', (req, res) ->
	console.log "app get was called!"
	Todo.find {}, [], {sort:[["created_at", -1]]}, (err, @todos) =>
		if err?
			res.json(err, 500)
		else
			res.json @todos

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
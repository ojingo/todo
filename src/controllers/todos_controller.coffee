# this controller handles server requests for todos

# Get a list of todos
app.get '/api/todos', (req, res) ->
	console.log "Get list of todos was called!"
	Todo.find {}, [], {sort:[["created_at", -1]]}, (err, @todos) =>
		if err?
			res.json(err, 500)
		else
			res.json @todos

# Create a new todo
app.post '/api/todos', (req, res) ->
	console.log "Creating a new todo!"
	@todo = new Todo(req.param('todo'))
	@todo.save (err) =>
		if err?
			res.json(err, 500)
		else
			res.json @todo

# Get specific todos
app.get '/api/todos/:id', (req, res) ->
	Todo.findById req.param('id'), (err, @todo) =>
		if err?
			res.json(err, 500)
		else
			res.json @todo


# Update specific todos
app.put '/api/todos/:id', (req, res) ->
	Todo.findById req.param('id'), (err, @todo) =>
		if err?
			res.json(err, 500)
		else
			@todo.set(req.param('todo'))
			@todo.save (err) =>
				if err?
					res.json(err, 500)
				else
					res.json @todo


# Delete specific todos
app.delete '/api/todos/:id', (req, res) ->
	Todo.findById req.param('id'), (err, @todo) =>
		if err?
			res.json(err, 500)
		else
			@todo.remove()
			res.json @todo


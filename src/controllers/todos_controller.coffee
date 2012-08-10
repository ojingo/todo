# this controller handles server requests for todos

# require all the responders here:
for name in ["index", "create", "show", "update", "destroy"]
	require("#{__dirname}/responders/#{name}_responder")

# Get a list of todos
app.get '/api/todos', new Responder.Index().respond

# Create a new todo
app.post '/api/todos', new Responder.Create().respond


# Get specific todos
app.get '/api/todos/:id', new Responder.Show().respond


# Update specific todos
app.put '/api/todos/:id', new Responder.Update().respond


# Delete specific todos
app.delete '/api/todos/:id', new Responder.Destroy().respond


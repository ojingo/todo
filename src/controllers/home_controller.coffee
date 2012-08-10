# Set up routing for our homepage:
app.get '/', (req, res) ->
	res.render 'index', layout: false
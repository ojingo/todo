# Set up routing for our homepage:
app.get '/', (req, res) ->
	res.send "Hellow Express! First world!"
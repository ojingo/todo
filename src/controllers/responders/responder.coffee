# a generic responder to help refactor the code to be more efficient and modular
class global.Responder

	respond: (@req, @res) =>
		@complete(null, {})

	complete: (err, result = {}) =>
		if err?
			@res.json(err,500)
		else
			@res.json result


stepping and presenter
step
	
	self connectedMorph ifNotNil: [:m |
		self line verticesAt: 2 put: m topLeft.
		m top: self top.
		m right: self owner right - 8]
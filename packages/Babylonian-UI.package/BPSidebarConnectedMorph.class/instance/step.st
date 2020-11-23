stepping and presenter
step
	
	self layoutEveryoneIfLeader.
	
	self connectedMorph ifNotNil: [:m |
		self line verticesAt: 2 put: m topLeft.
		m right: self owner right - 8]
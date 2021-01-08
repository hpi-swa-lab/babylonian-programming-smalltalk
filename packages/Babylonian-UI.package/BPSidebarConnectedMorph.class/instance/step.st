stepping and presenter
step
	
	self layoutEveryoneIfLeader.
	
	self connectedMorph ifNotNil: [:m |
		self connectedMorph wantsSidebarLine ifTrue: [
			(self line vertices second) = m topLeft ifFalse: [
				self line verticesAt: 2 put: m topLeft]].
		m right = (self owner right - 8) ifFalse: [
			m right: self owner right - 8]].
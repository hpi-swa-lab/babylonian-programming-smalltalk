drawing
drawOn: aCanvas
	
	blossomPointsDuringDrawing := OrderedCollection new.
	self
		drawBranchesOn: aCanvas
		number: 0
		angle: 0
		root: (0@0 extent: self extent) bottomCenter
		branchWidth: 20.
		
	self drawBlossomsOn: aCanvas.
	
	^ aCanvas
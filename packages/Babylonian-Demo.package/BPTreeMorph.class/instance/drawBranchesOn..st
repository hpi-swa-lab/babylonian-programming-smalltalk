drawing
drawBranchesOn: aCanvas
	<exampleNamed: 'basic root drawing' active: true setUp: '(ActiveWorld submorphNamed: #demo) form fillWhite.' tearDown: '(ActiveWorld submorphNamed: #demo) changed' self: 'BPTree new
	extent: 400@400;
	color: Color moss;
	yourself' with: '(ActiveWorld submorphNamed: ''demo'') form getCanvas'>
	blossomPointsDuringDrawing := OrderedCollection new.
	self
		drawBranchesOn: aCanvas
		number: 0
		angle: 0
		root: (0@0 extent: self extent) bottomCenter
		branchWidth: 10.
		
	self drawBlossomsOn: aCanvas.
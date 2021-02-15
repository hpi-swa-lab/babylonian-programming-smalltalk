drawing
drawOn: aCanvas
	<exampleNamed: 'basic root drawing' setUp: '(ActiveWorld submorphNamed: #demo) form fillWhite.' tearDown: '(ActiveWorld submorphNamed: #demo) changed' self: 'BPTree new
	extent: 400@400;
	stemColor: Color moss;
	yourself' with: '(ActiveWorld submorphNamed: ''demo'') form getCanvas'>
	blossomPointsDuringDrawing := OrderedCollection new.
	self
		drawBranchesOn: aCanvas
		number: 0
		angle: 0
		root: (0@0 extent: self extent) bottomCenter
		branchWidth: 20.
		
	self drawBlossomsOn: "<bpProbe id: 9261495 expression: [:result | result form]>"aCanvas"</bpProbe>".
	
	^ "<bpProbe id: 3467052 expression: [:result | result form]>"aCanvas"</bpProbe>"
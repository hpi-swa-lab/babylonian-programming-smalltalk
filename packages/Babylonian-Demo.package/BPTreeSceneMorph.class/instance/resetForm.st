private
resetForm
	<exampleNamed: 'basic' active: true self: 'BPTreeSceneMorph new
	extent: 500@300;
	yourself'>
	<exampleNamed: 'custom scene' active: true self: 'BPTreeSceneMorph new
	extent: 800@600;
	tree: (BPTree new
		blossomColor: Color lightMagenta;
		yourself);
	yourself'>
	| canvas |
	super resetForm.
	
	self sceneParts do: [:part |
		canvas := cachedForm getCanvas.
		part drawOn: canvas.
		"<bpProbe id: 2152072 expression: [canvas form]>"canvas flush"</bpProbe>"].
	
	^ "<bpProbe id: 8151076>"cachedForm"</bpProbe>"
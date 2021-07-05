private
resetForm
	<exampleNamed: 'custom scene' self: 'BPTreeSceneMorph new
	extent: 800@600;
	tree: (BPTree new
		blossomColor: Color lightMagenta;
		yourself);
	sky: BPSky roseSky;
	yourself'>
	<exampleNamed: 'basic scene' self: 'BPTreeSceneMorph new
	extent: 800@600;
	yourself'>
	| canvas |
	super resetForm.

	self sceneParts do: [:part |
		canvas := cachedForm getCanvas.
		Transcript show: 'draw part'. Transcript cr.
		Transcript show: part. Transcript cr.
		part drawOn: canvas. 
		Transcript show: canvas form. Transcript cr.
		canvas flush].
	
	^ cachedForm
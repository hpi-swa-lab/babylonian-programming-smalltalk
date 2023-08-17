accessing
resetForm
	<exampleNamed: 'basic' setUp: 'ThreadSafeRandom value: (Random seed: 10).' self: 'BPTreeSceneMorph new
	extent: 500@300;
	yourself'>
	| canvas | 
	super resetForm.

	self sceneParts do: [:part | 
		canvas := cachedForm getCanvas.
		part drawOn: canvas.
		canvas flush].
	
	^ cachedForm
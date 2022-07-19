drawing
drawOn: aCanvas
	<exampleNamed: 'normal example' setUp: '' tearDown: '' self: 'BPMountain new
	extent: 400@400;
	yourself' with: '(Form extent: 20@20 depth: 32) getCanvas'>
	<exampleNamed: 'small example' self: 'BPMountain new
	extent: 20@20;
	yourself' with: '(Form extent: 20@20 depth: 32) getCanvas'>
	| pencilPosition delta vertices |
	vertices := OrderedCollection new.
	pencilPosition := 0@(self height * (1 - self ratio)) rounded. 
	delta := 0@0.
	[pencilPosition x < self width] whileTrueDo: [
		vertices add: (pencilPosition min: (self width@self height)).
		delta := (2 to: 8) atRandom @ (-5 to: 5) atRandom.
		pencilPosition := pencilPosition + delta].
	
	vertices
		add: self width@pencilPosition y;
		add: self width@self height;
		add: 0@self height. 
	
	"<bpProbe id: 3197951>"aCanvas"</bpProbe>"
		drawPolygon: vertices
		color: self color
		borderWidth: 0
		borderColor: Color red.
	
	aCanvas
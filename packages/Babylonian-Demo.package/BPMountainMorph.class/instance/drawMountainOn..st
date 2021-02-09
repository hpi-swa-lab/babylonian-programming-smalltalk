drawing
drawMountainOn: aCanvas
	<exampleNamed: 'normal example' active: true setUp: '(ActiveWorld submorphNamed: #demo)
	form fillWhite.' tearDown: '(ActiveWorld submorphNamed: #demo) changed' self: 'BPMountainMorph new
	extent: 400@400;
	yourself' with: '(ActiveWorld submorphNamed: ''demo'') form getCanvas'>
	<exampleNamed: 'small example' active: true self: 'BPMountainMorph new
	extent: 20@20;
	yourself' with: '(Form extent: 20@20 depth: 32) getCanvas'>
	| pencilPosition delta |
	pencilPosition := 0@(self height * (1/3)). 
	[pencilPosition x < self width] whileTrueDo: [
		delta := (2 to: 8) atRandom @ (-5 to: 3) atRandom.
		aCanvas 
			line: pencilPosition x + delta x @ self height 
			to: pencilPosition + delta 
			width: delta x + 3
			color: self color.
		pencilPosition := pencilPosition + delta].
	
	"<bpProbe id: 715165 expression: [:result | result form]>"aCanvas"</bpProbe>"
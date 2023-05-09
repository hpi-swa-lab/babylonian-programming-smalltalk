initialization
buildSystemWindow

	| scrollPane |
	scrollPane := self newScrollPane.
	scrollPane scroller addMorph: self.
	
	^ SystemWindow new 
		setLabel: 'Babylonian ProbeLog';
		addMorph: scrollPane frame: (0@0 corner: 1@1);
		yourself
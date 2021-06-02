initialization
initializeScrollableCanvas
	
	canvasMorph := self newCanvasMorph.
	scrollPane := self newScrollPane.
	
	scrollPane scroller addMorph: canvasMorph.
	self addMorph: scrollPane frame: (0@0 corner: 1@1).
	
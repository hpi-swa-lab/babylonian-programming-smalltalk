initialization
initialize
	

	| removeButton |
	super initialize.
	
	allTracesCompleted := false.
	
	"This morph holds the traces and the expression morph"
	widgetsMorph := self newWidgetsMorph.
	self addMorphBack: widgetsMorph.
	
	tracesMorph := self newTracesMorph.
	widgetsMorph addMorphBack: tracesMorph.
		
	removeButton := self newRemoveButton.
	self addMorphBack: removeButton.
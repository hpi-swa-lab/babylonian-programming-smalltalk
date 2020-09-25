initialization
initialize
	

	| removeButton |
	super initialize.
	
	allTracesCompleted := false.
	tracesMorph := self newTracesMorph.
	removeButton := self newRemoveButton.
	"This morph holds the traces and the expression morph"
	widgetsMorph := self newWidgetsMorph.
	
	self addMorphBack: widgetsMorph.
	widgetsMorph addMorphBack: tracesMorph.
	self addMorphBack: removeButton.
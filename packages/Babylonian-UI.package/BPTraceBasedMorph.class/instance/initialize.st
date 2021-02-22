initialization
initialize
	

	| removeButton |
	super initialize.
	
	allTracesCompleted := false.
	slidersForFiltering := Set new.
	displayedTraces := Set new.
	
	tracesMorph := self newTracesMorph.
	tracesMorph height: self height.
	removeButton := self newRemoveButton
		balloonText: 'click to remove the ' , self annotationLabel;
		yourself.
	"This morph holds the traces and the expression morph"
	widgetsMorph := self newWidgetsMorph.
	
	self addMorphBack: widgetsMorph.
	widgetsMorph addMorphBack: tracesMorph.
	self addMorphBack: removeButton.
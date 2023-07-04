private - ui
newLabelContainerMorph: aLabelString
	
	| container |
	container := self newContainerMorph.
	container cellPositioning: #topLeft.
	container addMorphBack:( aLabelString asMorph 
			color: self class textColor;
			borderWidth: 0;
			yourself).
	^ container
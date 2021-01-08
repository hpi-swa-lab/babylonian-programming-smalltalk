ui - actions
collapse
	
	collapsed ifTrue: [^ self].
	
	exampleSpecificMorphs abandon.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
	self flag: #todo. "The following is very brittle --pre"
	self owner exampleMorphCollapsed: self.
	
	collapsed := true.
	
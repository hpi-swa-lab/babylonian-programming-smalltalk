ui - actions
collapse
	
	collapsed ifTrue: [^ self].
	
	exampleSpecificMorphs abandon.
	configurationButton abandon.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
	collapsed := true.
	
	self flag: #todo. "The following is very brittle --pre"
	self owner exampleMorphCollapsed: self.
	
	
	
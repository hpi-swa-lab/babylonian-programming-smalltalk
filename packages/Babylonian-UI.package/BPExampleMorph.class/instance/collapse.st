ui - actions
collapse

	collapsed ifTrue: [^ self].
	
	self abandonedMorphsOnCollapse do: [:aMorphToAbandon | aMorphToAbandon abandon].
	nameTextMorph 
		wrapFlag: false;
		hideScrollBarsIndefinitely.
	self collapseButton labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7).
	collapsed := true.
	
	self flag: #todo. "The following is very brittle --pre"
	self owner exampleMorphCollapsed: self.
	
	
	
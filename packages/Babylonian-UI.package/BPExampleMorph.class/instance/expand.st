ui - actions
expand

	collapsed ifFalse: [^ self].
	
	self abandonedMorphsOnCollapse do: [:aMorphToRestore | 
		self 
			addMorph: aMorphToRestore
			inFrontOf: self submorphs last].	
		
	nameTextMorph wrapFlag: true.
	self collapseButton labelGraphic: (BPIcons moreHorizontalIcon scaledToSize: self iconSize * 0.7).
	collapsed := false.
	
	self flag: #todo. "The following is very brittle --pre"
	self owner owner exampleMorphExpanded: self.
	
	
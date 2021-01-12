testing
anyExampleMorphsIsExpanded
	
	^ self exampleMorphs anySatisfy: [:morph | morph isCollapsed not]
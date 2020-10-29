filtering
applyFilter: filter depthOffset: offset

	| selfMatch childMatch |
	self isExpanded ifTrue: [self toggleExpandedState].
	
	selfMatch := self matches: filter.
	childMatch := self matchesAnyChild: filter depthOffset: offset.
	
	selfMatch | childMatch ifFalse: [^ self hide].
	
	selfMatch ifTrue: [
		self backgroundColor: ((Color gray: 0.85) alpha: 0.5).
		"<custom code>"currentFilter := filter"</custom code>"].
	childMatch ifTrue: [
		self toggleExpandedState.
		self childrenDo: [:child | child applyFilter: filter depthOffset: offset]].
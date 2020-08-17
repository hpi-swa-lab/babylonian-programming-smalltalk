private - ui
ensureErrorIndicatorFor: aTrace

	self getErrorIndicator ifNil: [
		self 
			addMorph: (self createErrorIndicatorFor: aTrace) 
			after: self submorphs first]
ui - actions
hideAnnotationsButtonClicked

	self areAnnotationsHidden
		ifTrue: [self showHiddenAnnotations]
		ifFalse: [self hideAnnotations].
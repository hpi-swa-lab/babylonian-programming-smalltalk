actions
removeButtonClicked

	BPTraces value removeKey: self example ifAbsent: ["dont care"].
	self containingBrowser removeAnnotations: {self annotation}.
	
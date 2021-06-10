*Babylonian-UI
buildCodePaneWith: aBuilder
	| spec textSpec |
	spec := super buildCodePaneWith: aBuilder.
	(spec respondsTo: #stylerClass:)
		ifTrue: [textSpec := spec]
		ifFalse: [
			"This seems brittle but it is kind of stable as it relies on the basic
			structure of the code holder"
			textSpec := spec children last].
	textSpec stylerClass: BPStyler.
	^ spec.
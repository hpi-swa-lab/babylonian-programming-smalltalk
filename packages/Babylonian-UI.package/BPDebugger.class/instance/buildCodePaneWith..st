toolbuilder
buildCodePaneWith: aBuilder
	
	| spec textSpec |
	spec := super buildCodePaneWith: aBuilder.
	(spec respondsTo: #stylerClass:)
		ifTrue: [textSpec := spec]
		ifFalse: [
			"This seems brittle but it is kind of stable as it relies on the basic
			structure of the browser"
			textSpec := spec children last].
	textSpec stylerClass: BPStyler.
	
	textSpec name: #codePaneTextMorph.
	
	^ spec
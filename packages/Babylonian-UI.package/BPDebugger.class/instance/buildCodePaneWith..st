toolbuilder
buildCodePaneWith: aBuilder
	
	| spec textSpec |
	spec := super buildCodePaneWith: aBuilder.
	textSpec := (spec respondsTo: #stylerClass:)
		ifTrue: [spec]
		ifFalse: [spec children detect: [:child | (child respondsTo: #stylerClass:)
			and: [child getText = #contents]]].
	textSpec stylerClass: BPStyler.
	
	textSpec name: #codePaneTextMorph.
	
	^ spec
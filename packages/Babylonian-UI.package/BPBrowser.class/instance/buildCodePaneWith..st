toolbuilder
buildCodePaneWith: aBuilder

	| spec textSpec buttonSpec |
	spec := super buildCodePaneWith: aBuilder.

	buttonSpec := self buildSidePaneButtonWith: aBuilder.
	spec children first children add: buttonSpec.
	
	textSpec := (spec respondsTo: #stylerClass:)
		ifTrue: [spec]
		ifFalse: [spec children detect: [:child | (child respondsTo: #stylerClass:)
			and: [child getText = #contents]]].
	textSpec stylerClass: BPStyler.
	
	textSpec name: #codePaneTextMorph.
	
	^ spec
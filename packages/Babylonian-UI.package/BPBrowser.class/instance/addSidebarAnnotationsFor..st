code pane
addSidebarAnnotationsFor: aBrowser

	^ BPStyler withSidebarAnnotations: [
		(aBrowser submorphNamed: #codePaneTextMorph) scroller submorphs first
			margins: (3@0 corner: 385@0).
		aBrowser extent: 900@600].
toolbuilder
buildSidePaneWith: aBuilder

	sidePaneContent := #none.
	isSidePaneVisible := false.
	
	^ aBuilder pluggableScrollPaneSpec new
		morph: self morphForSidePane;
		model: self;
		wantsResizeHandles: true;
		name: self sidePaneNameSymbol;
		borderWidth: 1;
		vScrollBarPolicy: #whenNeeded;
		hScrollBarPolicy: #whenNeeded;
		yourself.
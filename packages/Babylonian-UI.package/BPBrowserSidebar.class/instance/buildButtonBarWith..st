bottom bar
buildButtonBarWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: {
			aBuilder pluggableButtonSpec new
				frame: (0@0 extent: 0.25@1);
				label: 'popout';
				action: [self popout];
				yourself.
			aBuilder pluggableButtonSpec new
				frame: (0.25@0 extent: 0.25@1);
				label: 'explore callgraph';
				action: [visualization callgraph explore];
				yourself.
			aBuilder pluggableButtonSpec new
				frame: (0.5@0 corner: 1@1);
				model: self;
				label: #bottomBarText;
				action: [self openSelectionMenu];
				yourself.
		}
		yourself
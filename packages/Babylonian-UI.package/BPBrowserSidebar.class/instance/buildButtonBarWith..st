buttons
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
				frame: (0.5@0 extent: 0.25@1);
				yourself.
			aBuilder pluggableButtonSpec new
				frame: (0.75@0 extent: 0.25@1);
				yourself.
		}
		yourself
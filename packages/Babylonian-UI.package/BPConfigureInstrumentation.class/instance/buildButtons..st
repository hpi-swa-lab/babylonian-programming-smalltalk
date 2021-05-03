toolbuilder
buildButtons: builder
	
	^ builder pluggablePanelSpec new
		layout: #vertical;
		frame: (LayoutFrame fractions: (0.5 @ 0 corner: 0.5 @ 1) offsets: (self buttonWidth / -2 @ 0 corner: self buttonWidth / 2 @ 0));
		children: {
			builder pluggableActionButtonSpec new
				model: self;
				label: '>';
				enabled: #hasUninstrumentedSelection;
				action: #instrumentSelected;
				help: 'Start instrumenting the selected package'.
			
			builder pluggableActionButtonSpec new
				model: self;
				label: '<';
				enabled: #hasInstrumentedSelection;
				action: #uninstrumentSelected;
				help: 'Stop instrumenting the selected package'}
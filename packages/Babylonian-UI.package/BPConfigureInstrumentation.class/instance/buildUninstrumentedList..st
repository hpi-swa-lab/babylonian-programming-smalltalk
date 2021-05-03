toolbuilder
buildUninstrumentedList: builder
	
	^ builder pluggableListSpec new
		model: self;
		filterableList: true;
		clearFilterAutomatically: false;
		autoDeselect: true;
		list: #uninstrumentedPackagesWithTitle;
		getIndex: #selectionUninstrumented;
		setIndex: #selectionUninstrumented:;
		frame: (LayoutFrame fractions: (0 @ 0 corner: 0.5 @ 1) offsets: (0 @ 0 corner: self buttonWidth / -2 @ 0))
toolbuilder
buildWith: builder
	
	^ (builder build: (builder pluggableDialogSpec new
		model: self;
		extent: self initialExtent;
		autoCancel: true;
		title: 'Start or stop instrumenting packages';
		children: {
			self buildUninstrumentedList: builder.
			self buildButtons: builder.
			self buildInstrumentedList: builder};
		buttons: {
			builder pluggableButtonSpec new
				model: self;
				label: 'Accept';
				action: #accept}))
		addKeyboardCaptureFilter: self;
		yourself
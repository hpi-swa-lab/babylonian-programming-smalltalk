toolbuilder
buildToggleButtonSpecWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'toggle recording';
	 	action: #toggleRecording;
	 	help: 'Toggle Recording';
		yourself
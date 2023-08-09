toolbuilder
searchPreferencesWidgetForRecordingFor: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleTryRecordingPreference;
		state: #tryRecordingPreference;
		label: #tryRecordingPreferenceLabel;
		yourself
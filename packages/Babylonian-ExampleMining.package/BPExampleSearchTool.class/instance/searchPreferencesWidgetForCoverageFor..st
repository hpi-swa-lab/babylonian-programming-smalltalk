toolbuilder
searchPreferencesWidgetForCoverageFor: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleTryCoveragePreference;
		state: #tryCoveragePreference;
		label: #tryCoveragePreferenceLabel;
		yourself
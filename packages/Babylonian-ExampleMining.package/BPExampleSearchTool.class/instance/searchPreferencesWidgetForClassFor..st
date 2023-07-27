toolbuilder
searchPreferencesWidgetForClassFor: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleClassNamePreference;
		state: #classNamePreference;
		label: #classNamePreferenceLabel;
		yourself
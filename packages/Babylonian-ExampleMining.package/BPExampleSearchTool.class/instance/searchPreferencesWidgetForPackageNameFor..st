toolbuilder
searchPreferencesWidgetForPackageNameFor: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #togglePackageNamePreference;
		state: #packageNamePreference;
		label: #packageNamePreferenceLabel;
		yourself
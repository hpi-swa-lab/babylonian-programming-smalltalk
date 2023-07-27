toolbuilder
searchPreferencesWidgetForSelectorFor: aBuilder

	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleIncludesMethodSelectorPreference;
		state: #includesMethodSelectorPreference;
		label: #includesMethodSelectorPreferenceLabel;
		yourself
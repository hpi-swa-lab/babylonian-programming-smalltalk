toolbuilder
buildSearchPreferencesWith: aBuilder
	
	| panelSpec checkBoxSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	checkBoxSpec := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleClassNamePreference;
		state: #classNamePreference;
		label: #classNamePreferenceLabel;
		yourself.
	panelSpec children add: checkBoxSpec.

	checkBoxSpec := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleIncludesMethodSelectorPreference;
		state: #includesMethodSelectorPreference;
		label: #includesMethodSelectorPreferenceLabel;
		yourself.
	panelSpec children add: checkBoxSpec.
	
	checkBoxSpec := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleTryRecordingPreference;
		state: #tryRecordingPreference;
		label: #tryRecordingPreferenceLabel;
		yourself.
	panelSpec children add: checkBoxSpec.
	
	checkBoxSpec := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleTryCoveragePreference;
		state: #tryCoveragePreference;
		label: #tryCoveragePreferenceLabel;
		yourself.
	panelSpec children add: checkBoxSpec.
	
	panelSpec layout: #vertical.
	^panelSpec
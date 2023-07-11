toolbuilder
buildSearchPreferencesWith: aBuilder

	| className packageName toggleIncludes toggleRecording toggleCoverage |
	className := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleClassNamePreference;
		state: #classNamePreference;
		label: #classNamePreferenceLabel;
		yourself.

	packageName := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #togglePackageNamePreference;
		state: #packageNamePreference;
		label: #packageNamePreferenceLabel;
		yourself.

	toggleIncludes := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleIncludesMethodSelectorPreference;
		state: #includesMethodSelectorPreference;
		label: #includesMethodSelectorPreferenceLabel;
		yourself.

	toggleRecording := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleTryRecordingPreference;
		state: #tryRecordingPreference;
		label: #tryRecordingPreferenceLabel;
		yourself.

	toggleCoverage := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleTryCoveragePreference;
		state: #tryCoveragePreference;
		label: #tryCoveragePreferenceLabel;
		yourself.

	^ (self buildPanelSpecContaining: {className. packageName. toggleIncludes. toggleRecording. toggleCoverage}
			with: aBuilder)
	 		layout: #vertical;
			yourself
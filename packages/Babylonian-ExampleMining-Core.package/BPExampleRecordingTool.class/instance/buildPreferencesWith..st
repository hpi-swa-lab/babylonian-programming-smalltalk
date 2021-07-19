toolbuilder
buildPreferencesWith: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleMockingPreference;
		state: #mockingPreference;
		label: #mockingPreferenceLabel;
		yourself.
	panelSpec children add: buttonSpec.

	
	panelSpec layout: #horizontal.
	^panelSpec
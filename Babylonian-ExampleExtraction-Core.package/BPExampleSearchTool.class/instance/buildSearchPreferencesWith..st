toolbuilder
buildSearchPreferencesWith: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableCheckBoxSpec new
		model: self;
		action: #toggleClassNamePreference;
		state: #classNamePreference;
		label: #classNamePreferenceLabel;
		yourself.
	panelSpec children add: buttonSpec.

	
	panelSpec layout: #horizontal.
	^panelSpec
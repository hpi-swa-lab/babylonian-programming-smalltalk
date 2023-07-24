toolbuilder
buildSearchPreferencesWith: aBuilder

	| preferenceWidgets |
	
	preferenceWidgets := OrderedCollection new.
	
	self methodReference packageInfo
		ifNotNil: [preferenceWidgets add: (self searchPreferencesWidgetForPackageNameFor: aBuilder)].
		
	preferenceWidgets
		add: (self searchPreferencesWidgetForClassFor: aBuilder);
		add: (self searchPreferencesWidgetForSelectorFor: aBuilder);
		add: (self searchPreferencesWidgetForRecordingFor: aBuilder);
		add: (self searchPreferencesWidgetForCoverageFor: aBuilder).

	^ (self buildPanelSpecContaining: preferenceWidgets
			with: aBuilder)
	 		layout: #vertical;
			yourself
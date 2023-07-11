toolbuilder
buildSearchButtonWith: aBuilder

	^aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'search';
	 	action: #search;
	 	help: 'search';
		yourself
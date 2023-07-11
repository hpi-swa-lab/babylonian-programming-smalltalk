toolbuilder
buildAddButtonWith: aBuilder

	^aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'add example';
		action: #addExample;
		help: 'add example to method';
		yourself
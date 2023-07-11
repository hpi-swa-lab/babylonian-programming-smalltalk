toolbuilder
buildButtonsWith: aBuilder

	| addButtonSpec addMiniButtonSpec |
	addButtonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Add Example';
	 	action: #addExample;
	 	help: 'Add example';
		yourself.
	addMiniButtonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Add Minimized Example';
	 	action: #addMinimizedExample;
	 	help: 'Add minimized example';
		yourself.
		
	^ self buildPanelSpecContaining: {addButtonSpec. addMiniButtonSpec.} with: aBuilder
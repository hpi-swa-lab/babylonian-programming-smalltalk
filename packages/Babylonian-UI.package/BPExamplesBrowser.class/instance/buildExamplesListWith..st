toolbuilder
buildExamplesListWith: builder
	
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #exampleList; 
		getIndex: #exampleListIndex; 
		setIndex: #exampleListIndex:.
	^listSpec
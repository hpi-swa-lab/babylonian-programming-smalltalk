toolbuilder
buildPackagesListWith: builder
	
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #packageList; 
		getIndex: #packageListIndex; 
		setIndex: #packageListIndex:.
	^listSpec
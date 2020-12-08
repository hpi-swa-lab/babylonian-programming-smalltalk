instance-creation
newWithName: aMethodString inClass: aClassString categorized: aCategoryString

	^ BPMockMethod new
		methodName: aMethodString;
		className: aClassString;
		classCategory: aCategoryString
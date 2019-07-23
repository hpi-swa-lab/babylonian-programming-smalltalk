running
setUp

	super setUp.
	styler := BPStyler new.
	styler
		classOrMetaClass: self class; 
		selectedMethod: (self class>>#method) methodReference.
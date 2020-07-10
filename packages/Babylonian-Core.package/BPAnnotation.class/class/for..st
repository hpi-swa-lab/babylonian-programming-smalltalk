instance creation
for: aTag

	^ (self allSubclasses detect: [:class | class isAbstract not and: [class annotationTag = aTag]] ifNone: [self]) new
		tag: aTag;
		yourself
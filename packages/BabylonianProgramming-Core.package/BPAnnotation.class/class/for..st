instance creation
for: aTag

	^ (self subclasses detect: [:class | class annotationTag = aTag] ifNone: [self]) new
		tag: aTag;
		yourself
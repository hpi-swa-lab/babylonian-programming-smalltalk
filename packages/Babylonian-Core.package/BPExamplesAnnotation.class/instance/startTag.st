serialization
startTag
	^ (self exampleAnnotations collect: [:a | a startTag]) joinSeparatedBy: String cr
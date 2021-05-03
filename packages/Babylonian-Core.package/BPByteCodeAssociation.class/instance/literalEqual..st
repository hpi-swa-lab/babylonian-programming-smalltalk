literals
literalEqual: other
	
	^ self class == other class and: [self key == other key] and: [self value == other value]
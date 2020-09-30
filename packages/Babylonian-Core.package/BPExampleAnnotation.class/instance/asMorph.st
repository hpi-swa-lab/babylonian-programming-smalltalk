ui
asMorph

	^ self actualExample morphClass new
		annotation: self;
		example: self actualExample;
		yourself
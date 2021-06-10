accessing
selectedExample

	^ self actualExampleList at: self exampleListIndex ifAbsent: [nil]
accessing
processes

	^ Processes ifNil: [Processes := WeakKeyDictionary new]
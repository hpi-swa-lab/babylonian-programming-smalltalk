accessing - stack columns
forStackFrame: aBPContext add: aMorph

	(stackColumns at: aBPContext contextIdentityHash ifAbsentPut: [OrderedCollection new]) 
		add: aMorph
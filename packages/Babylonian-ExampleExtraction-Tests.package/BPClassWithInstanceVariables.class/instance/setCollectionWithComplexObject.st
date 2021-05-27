defaults
setCollectionWithComplexObject

	myCollection := OrderedCollection new
		add: BPClassWithInstanceVariables default;
		add: BPClassWithInstanceVariables default;
		add: #something;
		yourself.
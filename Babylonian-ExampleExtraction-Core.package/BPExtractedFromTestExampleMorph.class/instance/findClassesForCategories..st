test finding
findClassesForCategories: aCollection
	
"blatantly stolen from the TestRunner"

	| environment items |
	aCollection isEmpty 
		ifTrue: [ ^ self testBaseClass withAllSubclasses asSet ].
	environment := self environment.
	items := aCollection gather: [ :category |
		((environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ])
			select: [ :each | each includesBehavior: self testBaseClass ] ].
	^ items asSet
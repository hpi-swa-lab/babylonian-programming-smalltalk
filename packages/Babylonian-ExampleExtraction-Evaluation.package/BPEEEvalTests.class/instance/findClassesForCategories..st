copiedFromSearchTool
findClassesForCategories: aCollection
	
	"see TestRunner"

	| environment items |
	aCollection isEmpty 
		ifTrue: [ ^ self testBaseClass withAllSubclasses asSet ].
	environment := self environment.
	items := aCollection gather: [ :category |
		((environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ])
			select: [ :each | each includesBehavior: TestCase ] ].
	^ items asSet
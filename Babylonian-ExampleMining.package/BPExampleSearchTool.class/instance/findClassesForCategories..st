searching
findClassesForCategories: aCollection

	"see TestRunner"
	| environment items |
	aCollection ifEmpty: [ ^ self testBaseClass withAllSubclasses asSet ].
	environment := self environment.
	
	items := aCollection gather: [ :category |
		((environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ])
			select: [ :each | each includesBehavior: self testBaseClass ] ].
		
	^ items asSet
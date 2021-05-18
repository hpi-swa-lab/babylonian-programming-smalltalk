searching
findCategories
	
	"see TestRunner"

	| visible |
	visible := Set new.
	self testBaseClass withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	^ Array streamContents: [ :stream |
		self environment organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ]
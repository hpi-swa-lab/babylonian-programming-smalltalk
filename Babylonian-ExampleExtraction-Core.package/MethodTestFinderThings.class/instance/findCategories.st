as yet unclassified
findCategories
"blatantly stolen from the TestRunner"

	| visible |
	visible := Set new.
	self baseClass withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	^ Array streamContents: [ :stream |
		self environment organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ].
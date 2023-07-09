searching
findCategories

	"see TestRunner"
	| visible result |
	visible := Set new.
	self testBaseClass allSubclasses select: [:aSubclass | aSubclass category notNil]
									    thenDo: [:aCategorySubclass | visible add: aCategorySubclass category].
								
	result := Array streamContents: [ :stream | 
		visible do: [:aCategory | stream nextPut: aCategory ]].	

	^ result
private - ui
containingBrowser

	^ (self firstOwnerSuchThat: [:m | m model isKindOf: CodeHolder]) 
		ifNotNil: [:m | m model]
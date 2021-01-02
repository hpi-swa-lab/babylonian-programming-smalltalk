private - ui
selectButtonClicked

	| selectedValue values |
	values := optionsBlock value.
	selectedValue := UIManager default chooseFrom: (values collect: [:aValue | aValue asString]) values: values.
	selectedValue ifNotNil: [:aValue | model object: aValue].
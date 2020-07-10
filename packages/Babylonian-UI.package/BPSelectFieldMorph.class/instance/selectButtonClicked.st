private - ui
selectButtonClicked

	| selectedValue values |
	values := optionsBlock value.
	selectedValue := UIManager default chooseFrom: (values collect: [:v | v asString]) values: values.
	selectedValue ifNotNil: [:v | model object: v].
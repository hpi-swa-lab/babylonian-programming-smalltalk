tests
testShowsSingleAddButtonWhenJustOpened

	| button |
	button := probelog findDeeplyA: PluggableButtonMorphPlus.
	self deny: nil equals: button.
	self assert: 'add' equals: button label.	
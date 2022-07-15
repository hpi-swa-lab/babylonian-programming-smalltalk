tests
testShowsSingleAddButtonWhenJustOpened

	| button |
	button := printbugger findDeeplyA: PluggableButtonMorphPlus.
	self deny: nil equals: button.
	self assert: 'add' equals: button label.	
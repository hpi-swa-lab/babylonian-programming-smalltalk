initialize
customButtonSpecs
	"Answer an array of elements of the form wording, selector, help-message, that characterize the custom button row of a debugger."

	| list |
	list := #(('Proceed'	proceed				'Close the debugger and proceed.'	interruptedProcessShouldResume)
		('Restart'		restart				'Reset this context to its start.')
		('Into'			stepInto				'step Into message sends'	interruptedProcessIsReady)
		('Over'			stepOver				'step Over message sends'	interruptedProcessIsReady)
		('Through'		stepThrough		'step into a block'			interruptedProcessIsReady)
		('Full Stack'		showFullStack			'show full stack')
		('Where'		showWhere				'select current pc range')
		('Tally It'			tally				'evaluate current selection and measure the time')
		('Add Example' addExample 'Add current receiver and parameters as a Babylonian Example')).
	(Preferences restartAlsoProceeds and: [self interruptedProcessShouldResume]) ifTrue:
		[list := list collect: [:each |
			each second == #restart
				ifTrue: [each copy
						at: 1 put: 'Proceed Here';
						at: 3 put: 'Proceed from the beginning of this context.';
						yourself]
				ifFalse: [each second == #proceed
					ifTrue: [each copy
							at: 1 put: 'Proceed Top';
							at: 3 put: 'Proceed from the current top context.';
							yourself]
					ifFalse: [each]]]].
	^ list
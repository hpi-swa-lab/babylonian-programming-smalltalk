as yet unclassified
customButtonSpecs
	
	"Answer an array of elements of the form wording, selector, help-message, that characterize the custom button row of a debugger."

	| list |
	list := #(('Proceed'	proceed				'Close the debugger and proceed.'	interruptedProcessShouldResume)
		('Restart'		restart				'Reset this context to its start.')
		('Into'			stepInto				'step Into message sends'	interruptedProcessIsActive)
		('Over'			stepOver				'step Over message sends'	interruptedProcessIsActive)
		('Through'		stepThrough		'step into a block'			interruptedProcessIsActive)
		('Full Stack'		showFullStack			'show full stack')
		('Where'		showWhere				'select current pc range')
		('Tally It'			tally				'evaluate current selection and measure the time')
		('Add as recorded Example' addExample 'Add current receiver and parameter as a Babylonian example')).
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
	
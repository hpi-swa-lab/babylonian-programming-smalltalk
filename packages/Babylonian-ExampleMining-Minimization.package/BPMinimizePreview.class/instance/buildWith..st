toolbuilder
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		self receiverViewFrame -> [self buildReceiverViewWith: aBuilder].
		self argumentsViewFrame -> [self buildArgumentsViewWith: aBuilder].
		self buttonsFrame -> [self buildButtonsWith: aBuilder].
	}.
	windowSpec
		label: 'Minimization Preview';
		extent: 500@400.
		
	 ^ aBuilder build: windowSpec
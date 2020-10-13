accessing
selectedMessage
	
	self selection ifNil: [^ 'Select an example to see the code of its corresponding method'].
	^ super selectedMessage
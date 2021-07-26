instance creation
openFor: anExample with: aRequestor
	
	^ ToolBuilder open:
		(self new
			requestor: aRequestor;
			configureFor: anExample;
			yourself) 
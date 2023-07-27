instance creation
openFor: aMethod with: aRequestor

	| tool |
	tool := self new
		method: aMethod;
		requestor: aRequestor;
		yourself.

	^ ToolBuilder open: tool
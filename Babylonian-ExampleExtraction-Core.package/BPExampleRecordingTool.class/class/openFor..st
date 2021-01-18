as yet unclassified
openFor: aMethod

	| tool |
	tool := self new
		method: aMethod;
		yourself.
		
	^ ToolBuilder open: tool 
as yet unclassified
doubleClick
	
	| entry |
	entry := self getMethods at: self getIndex.
	self triggerEvent: #browseMethod with: entry methodReference 
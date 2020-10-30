as yet unclassified
doubleClick

	| entry |
	entry := self getAnnotations at: self getIndex.
	self triggerEvent: #browseMethod with: entry methodReference
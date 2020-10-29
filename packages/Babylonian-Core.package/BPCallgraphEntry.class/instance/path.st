as yet unclassified
path
	
	| path entry |
	path := OrderedCollection new.
	entry := self.
	[entry notNil] whileTrue: [
		path addFirst: entry.
		entry := entry parent].
	^ path
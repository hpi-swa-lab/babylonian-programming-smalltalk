as yet unclassified
pathWithoutContextMovingRight
	
	| path entry |
	path := OrderedCollection new.
	entry := self.
	[entry notNil] whileTrue: [
		entry class == BPCallgraphEntryReenter ifTrue: [| target |
			target := entry executionContinuationEntry.
			path addFirst: target.
			entry := target contextSenderChangedEntry].
		path addFirst: entry.
		entry := entry parent].
	^ path
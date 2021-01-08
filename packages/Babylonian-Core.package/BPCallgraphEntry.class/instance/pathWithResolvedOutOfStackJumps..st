as yet unclassified
pathWithResolvedOutOfStackJumps: aBPCallgraph
	
	| path entry |
	path := OrderedCollection new.
	entry := self.
	[entry notNil] whileTrue: [
		entry class == BPCallgraphEntryReenter ifTrue: [		
			"path addFirst: #contextJump."
			entry := aBPCallgraph detect: [:each | 
				each class == BPCallgraphEntryEnter and: [each equalsClassSelectorBlockIdxInvocation: entry]]].
		path addFirst: entry.
		entry := entry parent].
	^ path
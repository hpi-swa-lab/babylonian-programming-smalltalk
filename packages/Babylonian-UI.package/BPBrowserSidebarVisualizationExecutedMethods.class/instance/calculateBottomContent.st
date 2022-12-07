bottom content
calculateBottomContent
	
	| entries entriesForAncestorSearch paths list ancestor ancestorHighlightAttributes |
	additionalBottomTextAttributes := Dictionary new.
	additionalBottomTextIcons := Dictionary new.
	
	ancestorHighlightAttributes := {TextColor color: (Color fromString: '#7FB40C') . "TextEmphasis bold"}.
	list := OrderedCollection new.
	entries := self selectMatchingEntriesFromCallgraph: self selectedTopEntry.
	entriesForAncestorSearch := self preprocessBottomEntriesForAncestorSearch: entries.
	
	"common ancestor that ignores invocation counts"
	ancestor := self callgraph commonAncestorOf: entriesForAncestorSearch ignoringInvocationCounts: true.
	list add: (Text string: 'Common ancestor (context-insensitive)' attributes: {}).
	ancestor 
		ifNotNil: [		
			list add: ancestor.
			additionalBottomTextAttributes at: list size put: ancestorHighlightAttributes]
		ifNil: [list add: '--- not found ---'].
	
	"unique invocation paths that ignore invocation counts"
	paths := (entries collect: [:each | (each pathWithResolvedOutOfStackJumps: self callgraph) collect: #asPathPart]) withoutDuplicates.
	paths withIndexDo: [:path :i | | pathHash pathColor |
		list addLast: ''.
		pathHash := path size = 1 ifTrue: 0 ifFalse: [((path allButLast collect: [:p | p hash]) sum * 13 / 3) floor].
		pathColor := BPExample exampleColors atWrap: pathHash.
		list addLast: (Text 
			string: 'Unique Invocation Path ', i, ' (context-insensitive)' 
			attributes: {TextEmphasis bold ". TextColor color: pathColor"}).
		additionalBottomTextIcons at: list size put: (pathColor iconOrThumbnailOfSize: 10).
		path do: [:each |
			list add: each.
			each = ancestor ifTrue: [additionalBottomTextAttributes at: list size put: ancestorHighlightAttributes]]].
	
	^ {list . 0}
bottom content
calculateBottomContent
	
	| entries entriesForAncestorSearch paths list ancestor ancestorHighlightAttributes bottomFirstPartLength |
	additionalBottomTextAttributes := Dictionary new.
	
	ancestorHighlightAttributes := {TextColor color: (Color fromString: '#7FB40C') . "TextEmphasis bold"}.
	list := OrderedCollection new.
	entries := self selectMatchingEntriesFromCallgraph: self selectedTopEntry.
	entriesForAncestorSearch := self preprocessBottomEntriesForAncestorSearch: entries.
	
	"common ancestor that ignores invocation counts"
	ancestor := self callgraph commonAncestorOf: entriesForAncestorSearch ignoringInvocationCounts: true.
	list add: (Text string: 'Common ancestor (ignoring context)' attributes: {TextEmphasis bold}).
	ancestor 
		ifNotNil: [		
			list add: ancestor.
			additionalBottomTextAttributes at: list size put: ancestorHighlightAttributes]
		ifNil: [list add: '--- not found ---'].
	
	"unique invocation paths that ignore invocation counts"
	paths := (entries collect: [:each | each pathWithoutContextMovingRight collect: #asPathPart]) withoutDuplicates.
	paths withIndexDo: [:path :i |
		list addLast: ''.
		list addLast: (Text string: 'Unique Invocation Path ', i, ' (ignoring context)' attributes: {TextEmphasis bold}).
		path do: [:each |
			list add: each.
			each = ancestor ifTrue: [additionalBottomTextAttributes at: list size put: ancestorHighlightAttributes]]].
	
	bottomFirstPartLength := list size.
	
	2 timesRepeat: [list add: ''].
	
	"common ancestor with invocation counts"
	ancestor := self callgraph commonAncestorOf: entriesForAncestorSearch ignoringInvocationCounts: false.
	list add: (Text string: 'Common ancestor' attributes: {TextEmphasis bold}).
	ancestor
		ifNotNil: [		
			list add: ancestor.
			additionalBottomTextAttributes at: list size put: ancestorHighlightAttributes]
		ifNil: [list add: '--- not found ---'].
	
	"all invocations with invocation counts"
	entries withIndexDo: [:entry :i |
		list addLast: ''.
		list addLast: (Text string: 'Invocation ', i attribute: TextEmphasis bold).
		entry pathWithoutContextMovingRight do: [:each |
			list add: each.
			self flag: #todo. "What if the ancestor is not a BPCallgraphEntryEnter?"
			(ancestor notNil and: [each class == BPCallgraphEntryEnter] and: [each equalsClassSelectorBlockIdxInvocation: ancestor]) 
				ifTrue: [additionalBottomTextAttributes at: list size put: ancestorHighlightAttributes]]].
	^ {list . bottomFirstPartLength}
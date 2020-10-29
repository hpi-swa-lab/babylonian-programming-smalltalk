as yet unclassified
determineIntervalToAnnotateFor: anInterval
	"This determines the interval to annotate for a selected interval. The selected interval can also be a 0 width selection.
	If there is not valid interval this method will return nil."

	<exampleNamed: 'problematic case' active: true self: 'BPBrowser new setClass: BPSearchCollection selector: #binarySearch:; selectedMessage; yourself' with: '83 to: 92'>
	<exampleNamed: 'base case' self: 'BPBrowser new setClass: BPFancyStar selector: #initialize; selectedMessage; yourself' with: '26 to: 36'>
	| nodes parents lowestCommonAncestorIndex ancestors lowestUsefulAncestor |

	self bpBlock: 1 enteredAt: thisContext.
nodes := currentCompiledMethod bpSourceMap atAll: {(anInterval start). anInterval stop}.
	"This is necessary as we do only assume that the last node is the lowest one, not that
	the rest of the nodes is necessarily ordered according to the tree"
	parents := nodes collect: [:allNodes | self bpBlock: 2 enteredAt: thisContext.
self bpBlock: 2 leftWith: ({allNodes last} , allNodes last allParents) at: thisContext].
	 
	"This is a naiive approach but is fine as the trees are not that deep."
	lowestCommonAncestorIndex := (parents first findFirst: [:n | self bpBlock: 3 enteredAt: thisContext.
self bpBlock: 3 leftWith: (parents second includes: n) at: thisContext]).
	lowestCommonAncestorIndex = 0 ifTrue: [self bpBlock: 4 enteredAt: thisContext.
self bpBlock: 4 leftWith: (self error: 'broken tree, no common root found') at: thisContext].
	
	ancestors := parents first 
		copyFrom: lowestCommonAncestorIndex 
		to: parents first size.
	
	"This is not enough yet, we have the list of AST nodes covering the selected interval
	and their full ranges, but these nodes could be nonsensical to annotate." 
	lowestUsefulAncestor := (ancestors) 
		detect: [:n | self bpBlock: 5 enteredAt: thisContext.
self bpBlock: 5 leftWith: (self isAnnotatableRule: n ruleName) at: thisContext]
		ifNone: ["This can happen if users selected more than one statement, 
				we now have to search for the first statement below the current index"
				self bpBlock: 6 enteredAt: thisContext.
self bpBlock: 6 leftWith: ((parents first first: lowestCommonAncestorIndex) reverse 
					detect: [:n | self bpBlock: 7 enteredAt: thisContext.
self bpBlock: 7 leftWith: (self isAnnotatableRule: n ruleName) at: thisContext]
					ifNone: ["Try it again for the end of the interval"
						self bpBlock: 8 enteredAt: thisContext.
self bpBlock: 8 leftWith: ((parents second copyUpTo: (parents first at: lowestCommonAncestorIndex)) reverse
							detect: [:n | self bpBlock: 9 enteredAt: thisContext.
self bpBlock: 9 leftWith: (self isAnnotatableRule: n ruleName) at: thisContext]
							ifNone: [self bpBlock: 10 enteredAt: thisContext.
^ self bpBlock: 10 leftWith: (nil "There really is nothing to annotate") at: thisContext]) at: thisContext]) at: thisContext].^ self bpBlock: 1 leftWith: ((lowestUsefulAncestor) interval) at: thisContext
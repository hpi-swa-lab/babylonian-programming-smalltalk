as yet unclassified
determineIntervalToAnnotateFor: anInterval
	<layer: #bpInstrumented>
	"This determines the interval to annotate for a selected interval. The selected interval can also be a 0 width selection."

	<exampleNamed: 'basic case' self: 'BPBrowser new setClass: BPFancyStar selector: #initialize; selectedMessage; yourself' with: '26 to: 36'>

	| nodes parents lowestCommonAncestorIndex ancestors lowestUsefulAncestor |

	self bpBlock: 1 enteredAt: thisContext.
nodes := currentCompiledMethod bpSourceMap atAll: {(self bpTrace: [anInterval start] forProbe: 6912574 inContext: thisContext). anInterval stop}.
	"This is necessary as we do only assume that the last node is the lowest one, not that
	the rest of the nodes is necessarily ordered according to the tree"
	parents := nodes collect: [:allNodes | self bpBlock: 2 enteredAt: thisContext.
self bpBlock: 2 leftWith: (allNodes last allParents) at: thisContext].
	 
	"This is a naiive approach but is fine as the trees are not that deep."
	lowestCommonAncestorIndex := (self bpTrace: [parents first findFirst: [:n | self bpBlock: 3 enteredAt: thisContext.
self bpBlock: 3 leftWith: (parents second includes: n) at: thisContext]] forProbe: 7963799 inContext: thisContext).
	lowestCommonAncestorIndex = 0 ifTrue: [self bpBlock: 4 enteredAt: thisContext.
self bpBlock: 4 leftWith: (self error: 'broken tree, no common root found') at: thisContext].
	
	ancestors := parents first 
		copyFrom: lowestCommonAncestorIndex 
		to: parents first size.
	
	"This is not enough yet, we have the list of AST nodes covering the selected interval
	and their full ranges, but these nodes could be nonsensical to annotate." 
	lowestUsefulAncestor := (self bpTrace: [ancestors] forProbe: 1123177 inContext: thisContext) 
		detect: [:n | self bpBlock: 5 enteredAt: thisContext.
self bpBlock: 5 leftWith: (self isAnnotatableRule: n ruleName) at: thisContext]
		ifNone: ["This can happen if users selected more than one statement, 
				we now have to search for the first statement below the current index"
				self bpBlock: 6 enteredAt: thisContext.
self bpBlock: 6 leftWith: ((parents first first: lowestCommonAncestorIndex) reverse 
					detect: [:n | self bpBlock: 7 enteredAt: thisContext.
self bpBlock: 7 leftWith: (self isAnnotatableRule: n ruleName) at: thisContext]
					ifNone: [self bpBlock: 8 enteredAt: thisContext.
self bpBlock: 8 leftWith: (self error: 'no selectable node found') at: thisContext]) at: thisContext].
		
	(self bpTrace: [(BPStyler new selectedMethod: currentCompiledMethod; format: currentCompiledMethod getSource) asString 
		copyFrom: lowestUsefulAncestor interval start to: lowestUsefulAncestor interval stop] forProbe: 4564072 inContext: thisContext).^ self bpBlock: 1 leftWith: (lowestUsefulAncestor interval) at: thisContext
private
determineIntervalToAnnotateFor: anInterval
	"This determines the interval to annotate for a selected interval. The selected interval can also be a 0 width selection."

	<exampleNamed: 'basic case' active: true self: 'BPBrowser new setClass: BPFancyStar selector: #initialize; selectedMessage; yourself' with: '26 to: 36'>

	| nodes parents lowestCommonAncestorIndex ancestors lowestUsefulAncestor |
	self haltOnce. 
	nodes := currentCompiledMethod bpSourceMap atAll: {"<bpProbe id: 6912574>"anInterval start"</bpProbe>". anInterval stop}.
	"This is necessary as we do only assume that the last node is the lowest one, not that
	the rest of the nodes is necessarily ordered according to the tree"
	parents := nodes collect: [:allNodes | allNodes last allParents].
	 
	"This is a naiive approach but is fine as the trees are not that deep."
	lowestCommonAncestorIndex := "<bpProbe id: 7963799>"parents first findFirst: [:n | parents second includes: n]"</bpProbe>".
	lowestCommonAncestorIndex = 0 ifTrue: [self error: 'broken tree, no common root found'].
	
	ancestors := parents first 
		copyFrom: lowestCommonAncestorIndex 
		to: parents first size.
	
	"This is not enough yet, we have the list of AST nodes covering the selected interval
	and their full ranges, but these nodes could be nonsensical to annotate." 
	lowestUsefulAncestor := "<bpProbe id: 1123177>"ancestors"</bpProbe>" 
		detect: [:n | self isAnnotatableRule: n ruleName]
		ifNone: ["This can happen if users selected more than one statement, 
				we now have to search for the first statement below the current index"
				(parents first first: lowestCommonAncestorIndex) reverse 
					detect: [:n | self isAnnotatableRule: n ruleName]
					ifNone: [self error: 'no selectable node found']].
		
	"<bpProbe id: 4564072>"(BPStyler new selectedMethod: currentCompiledMethod; format: currentCompiledMethod getSource) asString 
		copyFrom: lowestUsefulAncestor interval start to: lowestUsefulAncestor interval stop"</bpProbe>".
		
	^ lowestUsefulAncestor interval
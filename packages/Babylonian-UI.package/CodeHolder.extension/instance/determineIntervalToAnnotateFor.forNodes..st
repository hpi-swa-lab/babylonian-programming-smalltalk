*Babylonian-UI-private
determineIntervalToAnnotateFor: anInterval forNodes: nodeList
	<exampleNamed: 'base case' self: 'BPBrowser new setClass: BPEuropeanFlag selector: #+; selectedMessage; yourself' with: '4 to: 6' with: '#(Argument)'>
	"This determines the interval to annotate for a selected interval. 
	The selected interval can also be a 0 width selection.
	If there is not valid interval this method will return nil."

	| nodes parents lowestCommonAncestorIndex ancestors lowestUsefulAncestor |
	self bpEnsureContentsAndSelectedMessage.
	
	nodes := currentCompiledMethod bpSourceMap atAll: {anInterval start. anInterval stop}.
	"This is necessary as we do only assume that the last node is the lowest one, not that
	the rest of the nodes is necessarily ordered according to the tree"
	parents := nodes collect: [:allNodes | {allNodes last} , allNodes last allParents].
	 
	"This is a naiive approach but is fine as the trees are not that deep."
	lowestCommonAncestorIndex := "<bpProbe id: 7963799>"parents first findFirst: [:n | parents second includes: n]"</bpProbe>".
	lowestCommonAncestorIndex = 0 ifTrue: [self error: 'broken tree, no common root found'].
	
	ancestors := parents first 
		copyFrom: lowestCommonAncestorIndex 
		to: parents first size.
	
	"This is not enough yet, we have the list of AST nodes covering the selected interval
	and their full ranges, but these nodes could be nonsensical to annotate." 
	lowestUsefulAncestor := "<bpProbe id: 1123177>"ancestors"</bpProbe>" 
		detect: [:n | nodeList includes: n ruleName]
		ifNone: ["This can happen if users selected more than one statement, 
				we now have to search for the first statement below the current index"
				(parents first first: lowestCommonAncestorIndex) reverse 
					detect: [:n | nodeList includes: n ruleName]
					ifNone: ["Try it again for the end of the interval"
						(parents second copyUpTo: (parents first at: lowestCommonAncestorIndex)) reverse
							detect: [:n | nodeList includes: n ruleName]
							ifNone: [^ nil "There really is nothing to annotate"]]].
			
	^ "<bpProbe id: 9948379 expression: [:result | result]>"lowestUsefulAncestor"</bpProbe>" interval
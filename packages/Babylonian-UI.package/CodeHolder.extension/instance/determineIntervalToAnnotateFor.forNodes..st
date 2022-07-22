*Babylonian-UI-private
determineIntervalToAnnotateFor: anInterval forNodes: nodeList
	<exampleNamed: 'base case' self: 'BPBrowser new setClass: BPFancyStar selector: #initialize2; selectedMessage; yourself' with: '82 to: 92' with: '#(BlockLiteral ExecutableCode)'>
	"This determines the interval to annotate for a selected interval. 
	The selected interval can also be a 0 width selection.
	If there is not valid interval this method will return nil."

	| nodes parents lowestCommonAncestorIndex ancestors lowestUsefulAncestor |
	
	"Workaround - When a window is collapsed the cached state of a 
	CodeHolder is released. This means that the currentCompiledMethod
	will be nil. To force a complete recomputation of the cache, we also
	have to remove the cached contents."
	contents := nil. 
	self selectedMessage.
	"End of workaround"
	
	nodes := currentCompiledMethod bpSourceMap atAll: {"<bpProbe id: 6912574>"anInterval start"</bpProbe>". anInterval stop}.
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
					detect: [:n | nodeList includes: "<bpProbe id: 4901027>"n ruleName"</bpProbe>"]
					ifNone: ["Try it again for the end of the interval"
						(parents second copyUpTo: (parents first at: lowestCommonAncestorIndex)) reverse
							detect: [:n | nodeList includes: n ruleName]
							ifNone: [^ nil "There really is nothing to annotate"]]].
			
	^ "<bpProbe id: 9948379 expression: [:result | (BPStyler new selectedMethod: currentCompiledMethod; format: currentCompiledMethod getSource) asString copyFrom: result interval start to: result interval stop]>"lowestUsefulAncestor"</bpProbe>" interval
*Babylonian-UI-private
allAndLowestUsefulAncestorFor: aListOfNodes canBeAnnotatedTo: aListOfKeywords

	"This is necessary as we do only assume that the last node is the lowest one, not that
	the rest of the nodes is necessarily ordered according to the tree"
	| ancestors lowestCommonAncestorIndex parents |
	parents := aListOfNodes collect: [:allNodes | {allNodes last} , allNodes last allParents].
	 
	"This is a naiive approach but is fine as the trees are not that deep."
	lowestCommonAncestorIndex := parents first findFirst: [:n | parents second includes: n].
	lowestCommonAncestorIndex = 0 ifTrue: [self error: 'broken tree, no common root found'].
	
	ancestors := parents first 
		copyFrom: lowestCommonAncestorIndex 
		to: parents first size.
	
	"This is not enough yet, we have the list of AST nodes covering the selected interval
	and their full ranges, but these nodes could be nonsensical to annotate." 
	^ {ancestors. ancestors 
		detect: [:n | aListOfKeywords includes: n ruleName]
		ifNone: ["This can happen if users selected more than one statement, 
				we now have to search for the first statement below the current index"
				(parents first first: lowestCommonAncestorIndex) reverse 
					detect: [:n | aListOfKeywords includes: n ruleName]
					ifNone: ["Try it again for the end of the interval"
						(parents second copyUpTo: (parents first at: lowestCommonAncestorIndex)) reverse
							detect: [:n | aListOfKeywords includes: n ruleName]
							ifNone: [nil "There really is nothing to annotate"]]]}.
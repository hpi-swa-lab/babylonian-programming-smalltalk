toolbuilder
buildWith: aBuilder
	

	model := BPCallgraphModel new.
	model callgraph: self callgraph.
	model 
		when: #doubleClicked 
		evaluate: [:entry | (entry respondsTo: #methodReference) ifTrue: [
				self triggerEvent: #browseMethod with: entry methodReference]].
	model
		when: #entryClicked
		evaluate: [:entry | (entry respondsTo: #senderMethodReference) ifTrue: [
				self triggerEvent: #highlightSend withArguments: {entry senderMethodReference . entry senderPC}]].
	^ aBuilder build: (model getSpec
		frame: (0@0 corner: 1@1);
		yourself)
as yet unclassified
addModelItemsToWindowMenu: aMenu
	
	aMenu addLine.
	aMenu add: 'draw lines to probes' action: [].
	self flag: #todo.
	
	^ aMenu
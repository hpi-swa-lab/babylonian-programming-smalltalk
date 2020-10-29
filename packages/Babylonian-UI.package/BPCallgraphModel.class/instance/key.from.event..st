as yet unclassified
key: aChar from: view event: event
	
	event anyModifierKeyPressed ifFalse: [
		PluggableTreeMorph maximumSearchDepth == 1 ifTrue: [
			UIManager default inform: 'It looks like you are trying to filter the calltree. However, your maximum filter search depth is set to 1, which will only filter immediate children of the currently selected element. It is therefore recommended to increase the ''maximum tree search depth'' preference.'].
		^ false].
	self getSelectedEntry ifNotNil: [:entry | entry keyPressed: aChar]
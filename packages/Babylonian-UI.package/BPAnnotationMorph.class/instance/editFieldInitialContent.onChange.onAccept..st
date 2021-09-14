private - ui
editFieldInitialContent: aString onChange: changeBlock onAccept: acceptBlock
	
	| model |
	model := BPStringValueModel new
		string: aString;
		onChangeBlock: changeBlock;
		onAcceptBlock: acceptBlock;
		yourself.
		
	^ self 
		editFieldFor: model
		text: #string
		onChange: #string:
		onAccept: #acceptContent:
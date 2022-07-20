private - ui
editFieldInitialContent: aText onChange: changeBlock onAccept: acceptBlock
	
	| model |
	model := BPStringValueModel new
		setString: aText;
		onChangeBlock: changeBlock;
		onAcceptBlock: acceptBlock;
		yourself.
		
	^ self 
		editFieldFor: model
		text: #string
		onChange: #string:
		onAccept: #acceptContent:
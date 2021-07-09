private - ui
newTitleMorphFor: aBPExample
	
	^ Morph new 
		name: #swimlaneTitle;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addAllMorphsBack: ((aBPExample uniqueIdentifier subStrings: '>>') collect: [:aString | aString asMorph]);
		on: #click 
			send: #value 
			to: [ToolSet browse: aBPExample method methodClass selector: aBPExample method selector asSymbol];
		yourself
	
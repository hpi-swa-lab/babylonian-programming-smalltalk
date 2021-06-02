private
newTitleMorphFor: aBPExample
	
	^ Morph new
		name: #swimlaneTitle;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addAllMorphsBack: ((aBPExample uniqueIdentifier subStrings: '>>') collect: [:aString | aString asMorph]);
		yourself
		
	
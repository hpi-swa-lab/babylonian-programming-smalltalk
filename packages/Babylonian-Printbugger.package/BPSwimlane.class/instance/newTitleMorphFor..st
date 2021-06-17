private
newTitleMorphFor: aBPExample
	
	| exampleLabel |
	exampleLabel := ((aBPExample uniqueIdentifier subStrings: '>>') fold:[:aString :otherString| aString, Character cr, otherString]) asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		ToolSet 
			browse: aBPExample method methodClass 
			selector: aBPExample method selector asSymbol]).
	^ (TextMorph string: exampleLabel size: TextStyle defaultFont height)
		name: #swimlaneTitle;
		color: aBPExample color;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		centered;
		yourself
		
	
private
newTitleMorphFor: aBPExample
	
	| exampleLabel |
	exampleLabel := ((aBPExample uniqueIdentifier copyReplaceAll: '>>' with: String cr) asText)
		addAttribute: (BPPluggableTextAttribute new evalBlock: [
			ToolSet 
				browse: aBPExample method methodClass 
				selector: aBPExample method selector asSymbol]).
	^ (exampleLabel asMorph)
		name: #swimlaneTitle;
		centered;
		yourself
		
	
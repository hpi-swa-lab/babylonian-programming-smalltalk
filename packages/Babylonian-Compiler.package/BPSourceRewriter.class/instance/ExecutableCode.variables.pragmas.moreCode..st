grammar rules
ExecutableCode: aNode variables: variableList pragmas: pragmas moreCode: moreCode
	
	^ currentSliderId 
		ifNil: [self defaultExpression: aNode]
		ifNotNil: [ | id |
			id := currentSliderId.
			currentSliderId := nil.
			("<bpProbe id: 6266520>"variableList children"</bpProbe>" first ifNotNil: [(self value: variableList) , String space] ifNil: '') , 
			('self bpBlock: {1} enteredAt: thisContext.' format: {id}) ,
			String cr ,
			(pragmas children first children ifNotEmpty: [(self value: pragmas) , String cr] ifEmpty: '') , 
			(self value: moreCode)] 
grammar rules
ExecutableCode: aNode variables: variableList pragmas: pragmas moreCode: moreCode
	
	| id localArgumentProbes |
	id := currentSliderId.
	localArgumentProbes := argumentProbes.
	argumentProbes := OrderedCollection new.
	currentSliderId := nil.
	^ String streamContents: [:stream | 
		stream << (variableList children first ifNotNil: [(self value: variableList) , String cr] ifNil: '').
		
		id ifNotNil: [
			stream
				<< ('self bpBlock: {1} enteredAt: thisContext.' format: {id});
				cr].
		localArgumentProbes do: [:argumentProbeSource |
			stream << argumentProbeSource; << '.'; cr].
			
		stream 
			<< (pragmas children first children 
						ifNotEmpty: [(self value: pragmas) , String cr] 
						ifEmpty: '');
			<< (self value: moreCode). ]
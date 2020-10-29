private
handleNonCompiledMethod: anObject action: action mode: mode
	
	anObject class caseOf: {
		[Smalltalk at: #CSLayeredMethod] ->  [
			">> #allPartialMethods includes the base method"
			anObject allPartialMethods do: [:partialMethod | self perform: action 
				with: partialMethod method 
				with: mode 
				with: [:newMethod | partialMethod setMethod: newMethod]]].
	} otherwise: [self error: 'Unsupported type of method.']
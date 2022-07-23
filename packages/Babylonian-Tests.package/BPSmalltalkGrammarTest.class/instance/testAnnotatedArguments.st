tests
testAnnotatedArguments

	startRule := #MethodDeclaration.

	self 
		shouldParse: 'methodWithOneArgument: "<bpProbe id: 1>"argument1"</bpProbe>"
			"empty body"';
		shouldParse: '+ "<bpArgumentProbe id: 1>"argument1"</bpProbe>"
			"empty body"';
		shouldParse: 'methodWithTwoArguments: "<bpProbe id: 1>"argument1"</bpProbe>" and: "<bpProbe id: 2>"argument2"</bpProbe>"
			"empty body"';
		shouldParse: 'methodWithOneArgument: "<bpProbe id: 1>"argument1"</bpProbe>"
			| temporary |';
		shouldParse: 'methodWithOneArgument: argument1 and: "<bpProbe id: 2>"argument2"</bpProbe>"
			2 + 3';
		shouldntParse: 'methodWithOneArgument: "<bpProbe id: 1>""<bpProbe id: 2>"argument1"</bpProbe>""</bpProbe>"
			"empty body"'.
		
	self 
		shouldParse: '+ "<bpProbe id: 1>"argument1"</bpProbe>"
			"empty body"'
		to: #(MethodDeclaration 
				(MethodHeader (BinaryMethodHeader 
					(binaryMessageSelector '+')
					(Argument (AnnotatedArgument '"<bpProbe id: 1>"argument1"</bpProbe>"'))))
				(Pragmas '')
				(ExecutableCode ''))
	
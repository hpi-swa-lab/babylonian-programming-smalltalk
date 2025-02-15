tests
testNestedAnnotatedAssignments

	startRule := #Statement.

	self 
		shouldParse: '"<bpProbe id: 2>""<bpProbe id: 1>"variable := 2"</bpProbe>""</bpProbe>"';
		shouldParse: 'variable := "<bpProbe id: 2>""<bpProbe id: 1>"2"</bpProbe>""</bpProbe>"'.
		
	self 
		shouldParse: '"<bpProbe id: 2>""<bpProbe id: 1>"variable := 2"</bpProbe>""</bpProbe>"'
		to: #(Statement
				(AnnotatedStatement
					(expressionAnnotationStart '"<bpProbe id: 2>"')
					(Statement
						(AnnotatedStatement '"<bpProbe id: 1>"variable := 2"</bpProbe>"'))
					(expressionAnnotationEnd '"</bpProbe>"'))).
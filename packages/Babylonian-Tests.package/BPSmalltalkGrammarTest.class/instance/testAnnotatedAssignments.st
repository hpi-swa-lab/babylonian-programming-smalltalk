tests
testAnnotatedAssignments

	startRule := #Statement.

	self 
		shouldParse: '"<bpProbe id: 1>"variable := 2"</bpProbe>"';
		shouldParse: 'variable := "<bpProbe id: 1>"2"</bpProbe>"';
		shouldntParse: '"<bpProbe id: 1>"variable"</bpProbe> := 2"'. "This is just now how we annotate assignments"
		
	self 
		shouldParse: '"<bpProbe id: 1>"variable := 2"</bpProbe>"'
		to: #(Statement
				(AnnotatedStatement '"<bpProbe id: 1>"variable := 2"</bpProbe>"')).
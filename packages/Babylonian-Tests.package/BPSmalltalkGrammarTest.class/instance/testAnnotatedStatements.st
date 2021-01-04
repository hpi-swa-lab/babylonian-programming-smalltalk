tests
testAnnotatedStatements

	startRule := #Statement.

	"An ordinary statement is an annotated expression"		
	self 
		shouldParse: '"<bpProbe id: 1>"variable + 2"</bpProbe>"'
		to: #(Statement
				(NormalStatement '"<bpProbe id: 1>"variable + 2"</bpProbe>"')).
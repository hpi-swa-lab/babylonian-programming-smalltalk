tests
testAnnotatedCascadedMessageSends

	startRule := #Expression.

	self 
		shouldParse: '2 negated; "<bpProbe id: 1>"moreNegated"</bpProbe>"';
		shouldParse: '2 negated; "<bpProbe id: 1>"+ 3"</bpProbe>"';
		shouldParse: '2 negated; "<bpProbe id: 1>"moreNegated: 10 negated"</bpProbe>"';
		shouldParse: '2 "<bpProbe id: 1>"negated"</bpProbe>"; moreNegated'; "This means that negated in send twice to 2"
		shouldntParse: '2 "<bpProbe id: 1>"negated; moreNegated"</bpProbe>"';
		shouldntParse: '2 negated; "<bpProbe id: 1>"moreNegated; foo: 10"</bpProbe>"'.
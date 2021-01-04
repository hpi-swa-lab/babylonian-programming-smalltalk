tests
testAnnotatedCascadedMessageReceivers

	startRule := #Expression.

	self 
		shouldParse: '2 negated; moreNegated';
		shouldParse: '"<bpProbe id: 1>"2"</bpProbe>" negated; moreNegated'.
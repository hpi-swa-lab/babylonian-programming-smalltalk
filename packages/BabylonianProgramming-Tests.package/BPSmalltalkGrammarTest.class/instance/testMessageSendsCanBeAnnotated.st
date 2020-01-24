tests
testMessageSendsCanBeAnnotated
	"This is required for sliders"
	startRule := #Expression.

	self shouldParseAll: {
		'5"<ab>"+ 2"</ab>"' . 
		'#(a b) "<ab>"ifTrue: [aVariable]"</ab>"'.
		'2 negated "<ab>"detect: [bar] ifFound: [foo]"</bc>"'}
tests
testMessageSendsCanBeAnnotated

	"This is required for sliders ... probably also for ordinary probes"
	startRule := #Expression.

	self fail. "I am not sure about this yet, this should maybe actually be: blocks can be annotated.... On the other hand the annotation of a message send might simply result in an instrumentation of the complete message send including the expression evaluating to the receiver. This way we could have the visual annotation exactly at the message and still provide a full instrumentation of that part of the message send."
	self shouldParseAll: {
		'5"<ab>"+ 2"</ab>"' . 
		'#(a b) "<ab>"ifTrue: [aVariable]"</ab>"'.
		'2 negated "<ab>"detect: [bar] ifFound: [foo]"</bc>"'}.
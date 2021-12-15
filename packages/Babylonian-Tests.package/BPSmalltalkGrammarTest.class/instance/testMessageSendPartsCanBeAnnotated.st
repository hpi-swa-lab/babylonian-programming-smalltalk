tests - message parts
testMessageSendPartsCanBeAnnotated
	"This is required for probes on message parts"
	startRule := #Expression.

	self shouldParseAll: {
		'5 + (3 + 4)' .
		'5 + "<bpab>"2 negated"</bpab>"' . 
		"'5 + ""<ab>""2 + 3""</ab>""' . This must not be parsed because of precedence" 
		'"<bpab>"2 negated"</bpab>" + 5' .
		'"<bpab>"3 + 4"</bpab>" + 5'.
		'"<bpab>"2 negated"</bpab>" raisedTo: 3' .
		'"<bpab>"2 + 3"</bpab>" raisedTo: 3'.
		'3 raisedTo: "<bpab>"2 negated"</bpab>"'.
		'3 raisedTo: "<bpab>"2 + 4"</bpab>"' }.
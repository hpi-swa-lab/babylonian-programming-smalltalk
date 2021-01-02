tests - message parts
testMessageSendPartsCanBeAnnotated
	"This is required for probes on message parts"
	startRule := #Expression.

	self shouldParseAll: {
		'5 + (3 + 4)' .
		'5 + "<ab>"2 negated"</ab>"' . 
		"'5 + ""<ab>""2 + 3""</ab>""' . This must not be parsed because of precedence" 
		'"<ab>"2 negated"</ab>" + 5' .
		'"<ab>"3 + 4"</ab>" + 5'.
		'"<ab>"2 negated"</ab>" raisedTo: 3' .
		'"<ab>"2 + 3"</ab>" raisedTo: 3'.
		'3 raisedTo: "<ab>"2 negated"</ab>"'.
		'3 raisedTo: "<ab>"2 + 4"</ab>"' }.
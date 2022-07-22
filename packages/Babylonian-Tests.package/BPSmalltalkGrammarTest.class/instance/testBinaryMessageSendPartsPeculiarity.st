tests - message parts
testBinaryMessageSendPartsPeculiarity
	
	startRule := #BinaryMessageSend.

	self 
		shouldParse: '3 + 4'; "base case"
		shouldParse: '"<bpab>"3 + 4"</bpab>"'; "ordinary annotation"
		shouldParse: '"<bpab>""<bpab>"3 + 4"</bpab>""</bpab>"'; "ordinary annotation"
		shouldParse: '"<bpab>"3 + 4"</bpab>" + 5'.
tests - message parts
testBinaryMessageSendPartsPeculiarity

	startRule := #BinaryMessageSend.

	self 
		shouldParse: '3 + 4'; "base case"
		shouldParse: '"<ab>"3 + 4"</ab>"'; "ordinary annotation"
		shouldParse: '"<ab>""<ab>"3 + 4"</ab>""</ab>"'; "ordinary annotation"
		shouldParse: '"<ab>"3 + 4"</ab>" + 5'.
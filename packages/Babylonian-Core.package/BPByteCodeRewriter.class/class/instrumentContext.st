0 - setup
instrumentContext
	
	| swapSenderWrapper terminateToWrapper privSenderWrapper |
	swapSenderWrapper := MwBlockMethodWrapper on: #swapSender: inClass: Context.
	swapSenderWrapper beforeBlock: [:context :arguments | BPByteCodeCallgraphTracer swapSenderOf: context newSender: arguments first].
	swapSenderWrapper install.
	
	terminateToWrapper := MwBlockMethodWrapper on: #terminateTo: inClass: Context.
	terminateToWrapper beforeBlock: [:context :arguments | BPByteCodeCallgraphTracer swapSenderOf: context newSender: arguments first].
	terminateToWrapper install.
	
	privSenderWrapper := MwBlockMethodWrapper on: #privSender: inClass: Context.
	privSenderWrapper beforeBlock: [:context :arguments | BPByteCodeCallgraphTracer swapSenderOf: context newSender: arguments first].
	privSenderWrapper install.
	
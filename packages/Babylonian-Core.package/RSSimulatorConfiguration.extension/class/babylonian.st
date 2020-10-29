*Babylonian-Core-Callgraph
babylonian
	

	| config |
	config := self "empty" default.
	config quickSelectors addAll: ((Object methodsInCategory: #'*Babylonian-Core') collect: [:symbol | symbol -> #yesNotWrapped]).
	config quickClasses addAll: {
		BPByteCodeCallgraphTracer -> #yesNotWrapped.
		BPByteCodeCallgraphTracer class -> #yesNotWrapped}.
	^ config
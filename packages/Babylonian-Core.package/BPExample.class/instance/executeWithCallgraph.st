tracing
executeWithCallgraph
	
	| receiver arguments selector block graph trace |

	receiver := self newReceiver.
	selector := self method selector.
	arguments := self newArguments.
	block := [receiver perform: selector withArguments: arguments].
	
	trace := [graph := BPCallgrapher new executeSimulated: block. graph result] bpTraceForExample: self.
	graph trace: trace.
	^ graph
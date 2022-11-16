private
ignoredMessagesInStack

	^ {MethodReference class: BlockClosure selector: #newProcess.
		MethodReference class: BPExample selector: #traceInBackground.
		MethodReference class: BlockClosure selector: #on:do:.
		MethodReference class: BPExample selector: #traceAsyncNotifying:.
		MethodReference class: BlockClosure selector: #bpTraceAsyncForExample:notifying:.
		MethodReference class: BlockClosure selector: #bpTraceWith:.
		MethodReference class: Symbol selector: #withLayerDo:.
		MethodReference class: Array selector: #withLayersDo:.
		MethodReference class: CSProcessContextInformation selector: #withLayers:do:.
		MethodReference class: BlockClosure selector: #ensure:.
		MethodReference class: DynamicVariable class selector: #value:during:.
		MethodReference class: BPExample selector: #traceAsyncNotifying:.
		MethodReference class: BPExample selector: #execute.
		MethodReference class: BPMethodExample selector: #runOn:.
		MethodReference class: CSMethodObject selector: #run:with:in:.
		MethodReference class: CSLayeredMethod selector: #valueWithReceiver:arguments:.
		MethodReference class: CSPartialMethod selector: #valueWithReceiver:arguments:.}
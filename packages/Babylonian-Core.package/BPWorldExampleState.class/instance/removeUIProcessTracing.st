private
removeUIProcessTracing

	BPActiveTracer removeUIProcessTracer.
	Project current addDeferredUIMessage: [#bpInstrumented deactivateLayerInCurrentProcess].
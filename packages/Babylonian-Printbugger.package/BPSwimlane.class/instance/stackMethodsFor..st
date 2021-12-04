private
stackMethodsFor: aBPExample

	^ aBPExample traceValues collect: [:aTraceValue |
		aTraceValue filteredStack collect: [:aStackEntry | MethodReference class: aStackEntry fourth selector: aStackEntry third]]
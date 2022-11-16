private
stacksFor: aBPExample

	^ aBPExample traceValues collect: [:aTraceValue | aTraceValue filteredStack]
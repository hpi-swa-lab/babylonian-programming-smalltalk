*Babylonian-Core
bpResolveReferenceDynamically: aSymbol in: aContext

	#bpInstrumented withoutLayerDo: [
		(aContext tempNames includes: aSymbol) ifTrue: [
			^ aContext namedTempAt: (aContext tempNames indexOf: aSymbol)].
		({self class} , self class allSuperclasses) do: [:klass |
			(klass instVarNames includes: aSymbol) ifTrue: [
				^ self instVarNamed: aSymbol]].
		self halt.
		^ (KeyNotFound key: aSymbol) signal]
1 - instrument
shouldNeverInstrument: aClass selector: aSymbol
	
	"largely copied from MwMethodWrapper class >> #canWrap:inClass:"
	| class method |
	(aClass category beginsWith: 'Babylonian-') ifTrue: [
		aClass category ~= 'Babylonian-Tests-Callgraph-ByteCode-Fixtures' ifTrue: [^ true]].
	(aClass theNonMetaClass includesBehavior: Context) ifTrue: [^ true].
	((aClass includesBehavior: CompiledMethod) and: [aSymbol == #valueWithReceiver:arguments:]) ifTrue: [^ true].
	((aClass includesBehavior: BlockClosure) and: [aSymbol == #value or: [aSymbol == #ensure:]]) ifTrue: [^ true].
	((aClass theNonMetaClass includesBehavior: Binding) and: [aSymbol == #value]) ifTrue: [^ true].
	
	(aClass theNonMetaClass includesBehavior: BPByteCodeCallgraphTracer) ifTrue: [^ true].
	(aClass theNonMetaClass includesBehavior: DynamicVariable) ifTrue: [^ true].
	((aClass includesBehavior: WriteStream) and: [aSymbol == #nextPut:]) ifTrue: [^ true].
	
	(aClass theNonMetaClass includesBehavior: BPByteCodeMethodState) ifTrue: [^ true].
	(aClass theNonMetaClass includesBehavior: BPByteCodeAssociation) ifTrue: [^ true].

	class := aClass whichClassIncludesSelector: aSymbol.
	class isNil ifTrue: [^ true].
	method := class compiledMethodAt: aSymbol ifAbsent: [nil].
	method isNil ifTrue: [^ true].
	method primitive ~= 0 ifTrue: [^ true].
		
	^ false
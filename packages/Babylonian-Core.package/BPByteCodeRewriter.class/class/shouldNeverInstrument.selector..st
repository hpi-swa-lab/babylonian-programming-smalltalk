1 - instrument
shouldNeverInstrument: aClass selector: aSymbol
	
	"largely copied from MwMethodWrapper class >> #canWrap:inClass:"
	| class method |
	(aClass category beginsWith: 'Babylonian-') ifTrue: [
		({'Babylonian-Tests-Callgraph-ByteCode-Fixtures' . 'Babylonian-Demo-TreeScene'} includes: aClass category) 
			ifFalse: [^ true]].
	
	{{CompiledMethod . {#valueWithReceiver:arguments:}}.
	  {BlockClosure . {#value . #ensure}}.
	  {WriteStream . {#nextPut:}}} do: [:tuple |
		((aClass includesBehavior: tuple first) and: [tuple second anySatisfy: [:excludedSelector | 
				excludedSelector == aSymbol]]) ifTrue: [^ true]].

	{{Context . {"only check for the class ;)"}}.
	  {Binding . {#value}}.
	  {BPByteCodeCallgraphTracer . {"only check for the class ;)"}}.
	  {DynamicVariable . {"only check for the class ;)"}}.
	  {BPByteCodeMethodState . {"only check for the class ;)"}}.
	  {BPByteCodeAssociation . {"only check for the class ;)"}}
	 } do: [:tuple |
		((aClass theNonMetaClass includesBehavior: tuple first) and: [tuple second isEmpty or: 
			[tuple second anySatisfy: [:excludedSelector | excludedSelector == aSymbol]]]) 
				ifTrue: [^ true]].

	class := aClass whichClassIncludesSelector: aSymbol.
	class isNil ifTrue: [^ true].
	method := class compiledMethodAt: aSymbol ifAbsent: [nil].
	method isNil ifTrue: [^ true].
	method primitive ~= 0 ifTrue: [^ true].
		
	^ false
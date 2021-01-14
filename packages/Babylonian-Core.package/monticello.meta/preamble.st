(PackageInfo named: 'Babylonian-Core') preamble: '"below, add code to be run before the loading of this package"
[(Process respondsTo: #addInstVarName:)
	ifTrue: [Process addInstVarName: ''tracer'']
	ifFalse: [Process addInstVarNamed: ''tracer'']]
	 on: Warning do: [:e | e resume].
'!

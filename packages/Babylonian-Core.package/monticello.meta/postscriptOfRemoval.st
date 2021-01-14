(PackageInfo named: 'Babylonian-Core') postscriptOfRemoval: '"below, add code to clean up after the unloading of this package"
[(Process respondsTo: #removeInstVarName:)
	ifTrue: [Process removeInstVarName: ''tracer'']
	ifFalse: [Process removeInstVarNamed: ''tracer'']] on: Warning do: [:e | e resume].
'!

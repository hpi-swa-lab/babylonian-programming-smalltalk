*Babylonian-UI-private
doAddInstanceProbeToRegistry: anInstanceVariableProbe nameIn: anInterval
	
	anInstanceVariableProbe 
		variableName: (self codeTextMorph text atAll: {anInterval start. anInterval stop});
		className: (self selectedClass name).
	BPClassNameToInstanceProbes value addProbe: anInstanceVariableProbe
	
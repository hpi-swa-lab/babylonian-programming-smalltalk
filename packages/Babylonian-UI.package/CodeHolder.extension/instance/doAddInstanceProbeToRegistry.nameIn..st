*Babylonian-UI-private
doAddInstanceProbeToRegistry: anInstanceVariableProbe nameIn: anInterval
	
	anInstanceVariableProbe 
		variableName: (self codeTextMorph text atAll: anInterval) asString;
		assignedClassName: (self selectedClass name).
	BPClassNameToInstanceProbes value addProbe: anInstanceVariableProbe
	
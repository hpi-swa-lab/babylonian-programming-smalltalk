*Babylonian-UI-private
doAddInstanceProbeToRegistry: anInstanceVariableProbe nameIn: anInterval
	
	anInstanceVariableProbe 
		variableName: (self codeTextMorph text atAll: anInterval);
		assignedClassName: (self selectedClass name).
	BPClassNameToInstanceProbes value addProbe: anInstanceVariableProbe
	
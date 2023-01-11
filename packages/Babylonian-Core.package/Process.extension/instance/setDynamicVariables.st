*Babylonian-Core
setDynamicVariables

	^ env 
		ifNil: [#()] 
		ifNotNil: [DynamicVariable allSubclasses intersection: env keys]
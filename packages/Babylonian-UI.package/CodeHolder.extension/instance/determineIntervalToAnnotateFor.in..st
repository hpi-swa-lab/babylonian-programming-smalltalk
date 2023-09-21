*Babylonian-UI-private
determineIntervalToAnnotateFor: anAnnotation in: anInterval
	
	| result sourceMap |
	"This determines the interval to annotate for a selected interval. 
	The selected interval can also be a 0 width selection.
	If there is not valid interval this method will return nil."

	self bpEnsureContentsAndSelectedMessage.
	self halt.
	sourceMap := currentCompiledMethod ifNotNil: [currentCompiledMethod bpSourceMap] ifNil: [self bpClassDeclarationSourceMap].
	result := self 
				allAndLowestUsefulAncestorFor: (sourceMap atAll: anInterval)
				canBeAnnotatedTo: anAnnotation canBeAnnotatedTo.
	result second ifNil: [^ nil].
	
	anAnnotation isInstanceVariableProbe ifFalse: [^ result second interval].

	(self editSelection == #editClass and: [self metaClassIndicated == anAnnotation wantsMetaClassIndication]) ifFalse: [^ nil].
	
	^ self 
		determineIntervalOfVariableNameIn: anInterval 
		having: result first.			
		
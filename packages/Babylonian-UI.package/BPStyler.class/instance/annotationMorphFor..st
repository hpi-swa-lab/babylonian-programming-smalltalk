private
annotationMorphFor: anAnnotation
	
	"This method implements the reuse of annotation morphs, in order to avoid
	re-layouting of the code pane and the annotation morphs themselves. They
	already have a height that will probably match the height of the updated
	version."
	
	| annotationMorph connectedMorph newMorph |
	annotationMorphs ifNil: [annotationMorphs := Dictionary new].
	annotationMorph := annotationMorphs at: anAnnotation id ifAbsentPut: [
		newMorph := anAnnotation asMorph.
		(BPStyler wantsSidebarAnnotations and: [
			self annotationCanBePutInSidebar: anAnnotation]) ifTrue: [
				connectedMorph := BPSidebarConnectedMorph new
					connectedMorph: newMorph;
					yourself.
				connectedMorph setProperty: #textAnchorProperties toValue: newMorph textAnchorProperties.
				newMorph := connectedMorph].
		newMorph].
	annotationMorph 
		annotation: anAnnotation;
		methodReference: selectedMethod.
	^ annotationMorph
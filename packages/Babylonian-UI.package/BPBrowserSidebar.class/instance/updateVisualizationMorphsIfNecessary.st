private
updateVisualizationMorphsIfNecessary
	
	"The following is a hack to prevent the complete rebuild of the call tree"
	visualization class = self selectedVisualizationTypeClass 
		ifTrue: [visualization example: self selectedExample]
		ifFalse: [self changed: #visualizationMorphs]
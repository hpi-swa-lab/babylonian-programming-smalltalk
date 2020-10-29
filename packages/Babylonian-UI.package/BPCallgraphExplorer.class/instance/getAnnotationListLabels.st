annotation list
getAnnotationListLabels
	
	^ self getAnnotations collect: [:each | each alternateLabel]
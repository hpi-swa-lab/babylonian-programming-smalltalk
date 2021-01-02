private
annotationCanBePutInSidebar: anAnnotation
	
	^ (anAnnotation isProbe or: [
		anAnnotation isReplacement or: [
		anAnnotation isAssertion or: [
		anAnnotation isSlider or: [
		anAnnotation isExamples]]]])
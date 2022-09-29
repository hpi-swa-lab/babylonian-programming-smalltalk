private - ui
ensureResumeTracingIcon
	
	| loaderIconHolder |
	(loaderIconHolder := self submorphNamed: #loaderIconHolder).
	(loaderIconHolder submorphNamed: #loader) ifNotNil: [self ensureNoLoaderIcon].
	loaderIconHolder submorphs ifEmpty: [loaderIconHolder addMorphBack: 
		((BPIcons playIcon scaledToSize: self iconSize) asMorph
			balloonText: 'Example execution timed out with given delay. Click here to resume.';
			on: #click send: #resumeTracing to: self example)]
private - ui
ensureLoaderIcon

	| loaderIconHolder |
	loaderIconHolder := self submorphNamed: #loaderIconHolder.
	(loaderIconHolder submorphNamed: #resumeTrace) ifNotNil: [self ensureNoLoaderIcon]. 	
	loaderIconHolder submorphs ifEmpty: [
		loaderIconHolder addMorphBack: 
			((BPIcons loaderIcon scaledToSize: self iconSize) asMorph 
				name: #loader;
				on: #click send: #suspendTracingProcess to: self example)].
private - ui
ensureLoaderIcon

	| loaderIconHolder |
	(loaderIconHolder := self submorphNamed: #loaderIconHolder) submorphs ifEmpty: [
		loaderIconHolder addMorphBack: (BPIcons loaderIcon scaledToSize: self iconSize) asMorph]
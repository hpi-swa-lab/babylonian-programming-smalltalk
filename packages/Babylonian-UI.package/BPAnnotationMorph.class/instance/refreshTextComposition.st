private - ui
refreshTextComposition
	
	| priorEditor |
	Project current addDeferredUIMessage: [
		self isInWorld ifTrue: [
			priorEditor := self owner editor.
			self owner releaseParagraph.
			self owner installEditorToReplace: priorEditor]]
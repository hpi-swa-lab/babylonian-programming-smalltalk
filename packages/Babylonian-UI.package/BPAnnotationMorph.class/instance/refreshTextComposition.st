private - ui
refreshTextComposition

	| priorEditor |
	Project current addDeferredUIMessage: [
		priorEditor := self owner editor.
		self owner releaseParagraph.
		self owner installEditorToReplace: priorEditor]
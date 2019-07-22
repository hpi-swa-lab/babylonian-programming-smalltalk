actions
removeButtonClicked

	(self firstOwnerSuchThat: [:m | m model isKindOf: BPBrowser]) model 
		removeAnnotations: {self annotation}
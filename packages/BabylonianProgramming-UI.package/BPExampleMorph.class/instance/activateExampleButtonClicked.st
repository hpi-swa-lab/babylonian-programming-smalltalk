actions
activateExampleButtonClicked

	self example toggleIsActive.
	(self firstOwnerSuchThat: [:m | m model isKindOf: BPBrowser]) model saveMethodWithExamples.
	
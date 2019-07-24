actions
doDelayedUpdate

	Project current addDeferredUIMessage: [
		[self containingBrowser saveMethodWithExamples] ensure: [hasSeenChange := false]].
	
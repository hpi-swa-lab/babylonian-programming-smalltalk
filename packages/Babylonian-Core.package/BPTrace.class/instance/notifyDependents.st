private
notifyDependents

	notificationSent ifFalse: [
		notificationSent := true.
		([[self changed: #traceChanged with: self] ensure: [notificationSent := false]] future: 10 "ms") value.]
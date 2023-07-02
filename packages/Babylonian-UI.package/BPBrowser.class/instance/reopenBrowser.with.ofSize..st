toolbuilder
reopenBrowser: window with: aBuilder ofSize: aPoint

	"aPoint is in the format of width@height."
	
	| oldWindow position dependents|
	position := currentWindow position.
	dependents := self dependents.

	oldWindow := currentWindow.
	currentWindow := window.
	oldWindow delete.
	
	self myDependents: dependents.
	
	isStylingValid := true.
	
	(window openAsTool)
			extent: aPoint;
			position: position;
			model: self.
		
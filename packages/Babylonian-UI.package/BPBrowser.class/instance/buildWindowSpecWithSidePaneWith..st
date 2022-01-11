toolbuilder
buildWindowSpecWithSidePaneWith: aBuilder

	| maxVert maxHor |
	maxHor := 1 - (self sidePaneDefaultWidth / (self currentWindow width + self sidePaneDefaultWidth)).
	maxVert := self wantsOptionalButtons ifTrue:[0.42] ifFalse:[0.5].
	
	^ self buildWindowWith: aBuilder specs: {
			(0@0 corner: (maxHor*0.25)@maxVert) -> [self buildSystemCategoryListWith: aBuilder].
			(self classListFrame: maxVert fromTop: 0 fromLeft: (maxHor*0.25) width: (maxHor*0.25)) -> [self buildClassListWith: aBuilder].
			(self switchesFrame: maxVert fromLeft: (maxHor*0.25) width: (maxHor*0.25)) -> [self buildSwitchesWith: aBuilder].
			((maxHor*0.5)@0 corner: (maxHor*0.75)@maxVert) -> [self buildMessageCategoryListWith: aBuilder].
			((maxHor*0.75)@0 corner: maxHor@maxVert) -> [self buildMessageListWith: aBuilder].
			(0@maxVert corner: maxHor@1) -> [self buildCodePaneWith:  aBuilder].
			"extention:"
			(maxHor@0 corner: 1@1) -> [self buildSidePaneWith: aBuilder].
		}
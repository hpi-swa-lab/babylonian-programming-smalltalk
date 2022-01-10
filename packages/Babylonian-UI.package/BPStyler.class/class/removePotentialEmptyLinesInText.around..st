actions
removePotentialEmptyLinesInText: aText around: replacementStart

	| affectedLine text |
	text := aText.
	affectedLine := text string lineCorrespondingToIndex: replacementStart.
	affectedLine withBlanksTrimmed ifEmpty: [ | startOfEmptyLine |
		startOfEmptyLine := (replacementStart to: 1 by: -1) detect: [:c | 
			(text at: c) = Character cr].
		text := text 
			copyReplaceFrom: startOfEmptyLine
			to: startOfEmptyLine + affectedLine size "Character cr"
			with: ''].
	^ text
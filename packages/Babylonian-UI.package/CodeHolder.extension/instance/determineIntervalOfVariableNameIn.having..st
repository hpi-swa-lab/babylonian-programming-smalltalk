*Babylonian-UI-private
determineIntervalOfVariableNameIn: anInterval having: aTopologicalCollectionOfAncestors
	
	| lowestKeywordMessageSegment selectedText |
	
	lowestKeywordMessageSegment := aTopologicalCollectionOfAncestors 
		detect: [:n | n ruleName = #KeywordMessageSegment]
		ifNone: [^ nil].
		
	((self contents atAll: lowestKeywordMessageSegment children first interval) ~= 'instanceVariableNames:') ifTrue: [^ nil].
	
	selectedText := (self contents atAll: anInterval) withBlanksTrimmed.
	self flag: #todo. "wenn es sowas wie aha und aha2 gibt, dann wird das falsch sein, wenn ich aha markiere
	und aha2 als erstes kommt"
	
	^ self selectedClassOrMetaClass instVarNames 
		detect: [:aVariable | aVariable = selectedText]
		ifFound:  [:matchingVariable | | start |
			start := self contents findString: matchingVariable.
			 ^ Interval from: start to: start + matchingVariable size - 1]
				
		
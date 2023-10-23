*Babylonian-UI-private
determineIntervalOfVariableNameIn: anInterval having: aTopologicalCollectionOfAncestors
	
	| lowestKeywordMessageSegment selectedText |
	
	lowestKeywordMessageSegment := aTopologicalCollectionOfAncestors 
		detect: [:n | n ruleName = #KeywordMessageSegment]
		ifNone: [^ nil].
		
	((self contents atAll: lowestKeywordMessageSegment children first interval) ~= 'instanceVariableNames:') ifTrue: [^ nil].
	
	selectedText := (self contents atAll: anInterval) withBlanksTrimmed.
	
	^ self selectedClassOrMetaClass instVarNames 
		detect: [:aVariable | aVariable = selectedText]
		ifFound:  [:matchingVariable | | interval |
			"in case we have variables like 'foo2' and 'foo' we have to consider spaces or '' too"
			interval := (self contents allRangesOfRegexMatches: '(''| )', matchingVariable, '(''| )') first.
			 ^ Interval from: (interval start + 1) to: (interval stop - 1)]
				
		
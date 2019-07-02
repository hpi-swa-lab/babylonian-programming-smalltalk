*BabylonianProgramming-Core
asBPSource
	"The trick for doing this elegantly is to replace intervals from the end
	to the beginning and from the inside to the outside.
	Note: We determine the ordering of the intervals from start to end first
	as this makes it easier to traverse the interval inclusion tree."
	| offset intervals resultString |
	offset := 0.
	resultString := self string copy.
	intervals := (runs asValuesAndIntervals associations sorted: [:i1 :i2 | 
		i1 value start < i2 value start and: [i1 value size > i2 value size]]).
	intervals := intervals select: [:assoc | assoc key anchoredMorph notNil].
	intervals reversed do: [:association | | attribute interval startTag stopTag newExpression |
		attribute := association key.
		interval := association value.
		startTag := attribute anchoredMorph startTag.
		stopTag := attribute anchoredMorph stopTag.
		newExpression := startTag , 
			(resultString copyFrom: interval start to: interval stop + offset) , 
			stopTag.
		resultString := resultString 
			copyReplaceFrom: interval start 
			to: interval stop + offset
			with: newExpression.
		offset := offset + startTag size + stopTag size].
	^ resultString copyWithout: Character startOfHeader
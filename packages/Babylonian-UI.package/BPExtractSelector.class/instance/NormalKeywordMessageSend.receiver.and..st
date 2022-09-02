as yet unclassified
NormalKeywordMessageSend: aNode receiver: receiverNode and: messageSegments

	keywordSelectorString := ''.
	"The following triggers side-effects"
	self value: messageSegments.
	^ {keywordSelectorString}
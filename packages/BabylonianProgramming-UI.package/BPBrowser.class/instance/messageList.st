message list
messageList
	"Answer an Array of the message selectors of the currently selected message category. If no category is selected or the '-- all --' category is selected, return all method selectors. Make deprecated messages look gray and struck-out."
	

	^ (self selectedMessageCategoryName isNil or: [self selectedMessageCategoryName = ClassOrganizer allCategory])
		ifTrue: [
			self classOrMetaClassOrganizer
				ifNil: [Array new]
				ifNotNil: [:organizer | (organizer allMethodSelectors reject: [:ea | ea includes: $(])
					collect: [:ea | 
						| method |
						ea = #messageList ifTrue: [ea] ifFalse: [
							method := self selectedClassOrMetaClass compiledMethodAt: ea.
							((method hasLiteral: #deprecated scanForSpecial: false)
								or: [method hasLiteral: #deprecated: scanForSpecial: false])
									ifTrue: [ea asText
										addAttribute: (TextColor color: Color gray);
										addAttribute: TextEmphasis struckOut;
										 yourself]
									ifFalse: [ea]]]]]
		ifFalse: [
			(self classOrMetaClassOrganizer listAtCategoryNamed: self selectedMessageCategoryName)
				ifNil: [Array new]]
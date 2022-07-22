drag and drop
wantsMessageCategoriesDrop: anObject

	^ (super wantsMessageCategoriesDrop: anObject) or: [anObject isContextSMethod]
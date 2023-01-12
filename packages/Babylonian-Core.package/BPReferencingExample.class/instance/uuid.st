accessing
uuid

	^ uuid ifNil: [uuid := (UUID new asString findTokens: '-') first asSymbol]
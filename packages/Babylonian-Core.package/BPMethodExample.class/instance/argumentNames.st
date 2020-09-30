accessing
argumentNames
	
	| parts |
	parts := self method methodClass formalHeaderPartsFor: self method selector.
	^ (1 to: self method selector numArgs) collect: [:anIndex | 
		parts at: (4 * anIndex)]
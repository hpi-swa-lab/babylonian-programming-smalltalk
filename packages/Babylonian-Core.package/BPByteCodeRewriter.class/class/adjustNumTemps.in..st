private
adjustNumTemps: aNumber in: header
	
	| h |
	self assert: (aNumber >= 0 and: [aNumber <= 63]).
	h := header bitClear: (63 bitShift: 18).
	h := h bitOr: (aNumber bitShift: 18).
	^ h
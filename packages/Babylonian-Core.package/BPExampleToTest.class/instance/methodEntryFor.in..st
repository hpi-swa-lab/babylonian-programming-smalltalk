helper
methodEntryFor: aMethodName in: aClass

	^ aClass methodDict at: (aMethodName asSymbol) ifAbsent: nil

	
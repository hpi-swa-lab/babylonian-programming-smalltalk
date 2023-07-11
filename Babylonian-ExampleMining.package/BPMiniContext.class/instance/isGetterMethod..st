minimizing
isGetterMethod: aMethod

	^ aMethod isQuick and: [aMethod referredInstVars isEmpty not]
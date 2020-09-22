tracing
recordBlock: blockId in: aMethod enteredFrom: aContext
	
	
	| sendId newRecord |
	sendId := sendCounter 
		at: aMethod
		put: (sendCounter at: aMethod ifAbsentPut: [0]) + 1.
	
	newRecord := sendRecorder
		recordSendId: sendId
		method: aMethod
		receiver: aContext receiver
		arguments: aContext arguments
		context: aContext.
	(sendRecords at: aContext ifAbsentPut: [Dictionary new]) at: blockId put: newRecord.
	^ newRecord
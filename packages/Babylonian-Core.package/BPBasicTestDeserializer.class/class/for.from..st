instance - creation
for: anExampleConsumer from: aTestMethod
	
	^ self basicNew
			test: aTestMethod;
			consumer: anExampleConsumer;
			initialize
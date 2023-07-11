initialize-release
configureFor: anExample

	| miniContext miniReceiverAndArguments |
	
	miniContext := BPMiniContext example: anExample.
	self method: anExample method.
	receiver := miniContext receiver.
	arguments := miniContext arguments.
	
	miniReceiverAndArguments := miniContext createMinimizedObjects.
	miniReceiver := miniReceiverAndArguments first.
	miniArguments := miniReceiverAndArguments second
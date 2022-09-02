*Babylonian-UI-tracing
determineSelectorOfMessageSend: sendNode

	^ (BPExtractSelector new 
		source: self codeTextMorph text;
		value: sendNode) first asSymbol
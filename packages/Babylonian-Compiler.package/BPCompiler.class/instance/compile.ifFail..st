public access
compile: aCueWithStyledSource ifFail: failBlock
	
	"This method expects source code which has annotations embedded in comments, if any, meaning
	it's styled with text attributes. Since the BPBrowser breaks the premise of the Parser that the
	source stream and the code panel's morph code is the same, auto refactoring will quickly cause inconsistencies.
	For example, if one were to add a temporal variable to existing ones, with the second vertical line being
	at position 18, the styled version could have it at position 19. The parser would then re-add two lines,
	causing for synctactic errors when compiling. Therefore, we remove the text styling inside the morph
	to re-fullfill that premise again during compilation."
	| originalMethodNode bpStyledSource bpUnstyledSource unstyledCue |
	bpStyledSource := aCueWithStyledSource sourceStream contents asString.
	bpUnstyledSource := bpStyledSource asBPSource.
	
	aCueWithStyledSource requestor ifNotNil: [
		aCueWithStyledSource requestor useDefaultStyler.
		aCueWithStyledSource requestor setText: bpUnstyledSource.
		"Changing the styler here won't change the text contents back to styled. It will as soon as the 
		morph is updated after the compilation process, which lets us avoid manually having to style
		back in different error cases in this method."
		aCueWithStyledSource requestor styler: (BPStyler new view: aCueWithStyledSource requestor).].
	
	unstyledCue := CompilationCue
		source: bpUnstyledSource readStream
		context: aCueWithStyledSource context
		receiver: aCueWithStyledSource receiver 
		class: aCueWithStyledSource getClass 
		environment: aCueWithStyledSource environment 
		requestor: aCueWithStyledSource requestor.
	originalMethodNode := super compile: unstyledCue ifFail: failBlock.
	
	bpStyledSource := originalMethodNode sourceText asString.
	(self methodSourceRequiresBPLayers: bpStyledSource) ifTrue: [
		(self compileInstrumentedVersionOf: aCueWithStyledSource) ifFalse: failBlock].
						
	^ originalMethodNode
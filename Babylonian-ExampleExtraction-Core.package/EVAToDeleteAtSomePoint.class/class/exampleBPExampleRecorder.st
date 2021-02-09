as yet unclassified
exampleBPExampleRecorder
	
	| recorder |
	recorder := BPExampleRecorder new.
	recorder instrumentMethod: Morph>>#color:.
	recorder startRecording.

	recorder stopRecording.
	recorder uninstall.

	Morph new color: Color red
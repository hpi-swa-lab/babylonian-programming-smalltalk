initialize-release
configureFor: anExample

	| recorder |
	self method: anExample method.
	recorder := (BPExampleRecorder new
  		instrumentMethod: self method;
		yourself).
	recorder startRecording.
	anExample execute.
	recorder stopRecording.
	recorder uninstall.
	receiver := recorder recordedCalls first first.
	arguments := recorder recordedCalls first second
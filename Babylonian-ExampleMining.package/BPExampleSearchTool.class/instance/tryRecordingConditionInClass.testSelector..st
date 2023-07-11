searching
tryRecordingConditionInClass: aClass testSelector: aSymbol

	| recorder |

	self tryRecordingPreference ifFalse: [^ true].

	recorder := (BPExampleRecorder new
  		instrumentMethod: self method;
		yourself).
	recorder startRecording.
	aClass run: aSymbol.
	recorder stopRecording.
	recorder uninstall.

	^ recorder recordedCalls notEmpty
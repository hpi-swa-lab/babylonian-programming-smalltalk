accessing
default
	
	"The reference to a global variable allows us to still scope the variable for test executions
	and at the same time have a proper global variable."
	
	^ Smalltalk globals at: #bpGlobalExamples ifAbsentPut: [ | newActiveExamples |
		newActiveExamples := BPExamples new.
		SystemChangeNotifier uniqueInstance notify: newActiveExamples ofSystemChangesOfItem: #method using: #systemChangeEvent:.
		SystemChangeNotifier uniqueInstance notify: newActiveExamples ofSystemChangesOfItem: #class using: #systemChangeEvent:.
		newActiveExamples]
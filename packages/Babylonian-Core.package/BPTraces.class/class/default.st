accessing
default
	"The reference to a global variable allows us to still scope the variable for test executions
	and at the same time have a proper global variable."
	^ Smalltalk at: #bpGlobalTraces ifAbsentPut: [ | newTraceRegistry |
		newTraceRegistry := BPTraceRegistry new.
		SystemChangeNotifier uniqueInstance notify: newTraceRegistry ofSystemChangesOfItem: #method using: #systemChangeEvent:.
		SystemChangeNotifier uniqueInstance notify: newTraceRegistry ofSystemChangesOfItem: #class using: #systemChangeEvent:.
		newTraceRegistry]
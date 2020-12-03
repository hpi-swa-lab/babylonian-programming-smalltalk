accessing
default
	"The reference to a global variable allows us to still scope the variable for test executions
	and at the same time have a proper global variable."
	
	^ Smalltalk at: #bpGlobalSpecimenRegistry ifAbsentPut: [BPSpecimenRegistry new]
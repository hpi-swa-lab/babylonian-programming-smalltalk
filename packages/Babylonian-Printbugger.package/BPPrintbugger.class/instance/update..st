change notifications
update: anAspect
	
	super update: anAspect.
	anAspect = #bpExamples ifTrue: [
		BPExamples value examples do: [:anExample | anExample addDependent: self.]]. 
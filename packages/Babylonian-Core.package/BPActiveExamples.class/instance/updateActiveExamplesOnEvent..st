private
updateActiveExamplesOnEvent: aChangeEvent
	
	aChangeEvent itemKind = SystemChangeNotifier methodKind ifTrue: [
		"Ordering of these updates is important, as we want to watch live specimen. 
		For that we have to add the ActiveExamples object as a dependent. As the live
		specimen remains the same across incarnations of an example, the ActiveExamples
		object would be removed from the dependents again when an old example
		is removed from the list of active examples." 
		aChangeEvent isRemoved ifTrue: [
			self removeAll: aChangeEvent item bpExamples].
		    
		 aChangeEvent isModified ifTrue: [
			self removeAll: aChangeEvent oldItem bpExamples].
		
		(aChangeEvent isAdded or: [aChangeEvent isModified]) ifTrue: [
			aChangeEvent item bpExamples. "forces an update"]] 
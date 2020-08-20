private
updateActiveExamplesOnEvent: aChangeEvent

	aChangeEvent itemKind = SystemChangeNotifier methodKind ifTrue: [
		(aChangeEvent isAdded or: [aChangeEvent isModified]) ifTrue: [
			aChangeEvent item bpExamples. "forces an update"].
	
		aChangeEvent isRemoved ifTrue: [
			self removeAll: aChangeEvent item bpExamples].
		    
		 aChangeEvent isModified ifTrue: [
			self removeAll: aChangeEvent oldItem bpExamples]] 
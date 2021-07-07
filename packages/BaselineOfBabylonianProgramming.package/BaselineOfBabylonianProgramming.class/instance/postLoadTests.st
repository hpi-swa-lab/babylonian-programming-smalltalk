baseline
postLoadTests
	
	{#BPSearchCollection . #BPEuropeanFlag . #BPEuropeanFlagStar . #BPTestExamplesClass} 		do: [:className | (Smalltalk at: className) methodsDo: [:m | m bpRecompile]].
	 
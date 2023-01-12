*Babylonian-Core
forContext: aContext priority: anInteger 
	"Answer an instance of me that has suspended aContext at priority anInteger. 
	It's important to set the priority before setting the suspendedContext; otherwise
	an endless stream of error windows will start poping up when debugging e.g.
		[] newProcess
	when Process Browser is open with auto-update on."

	| newProcess activeProcess |
	newProcess := self new.
	newProcess priority: anInteger.
	
	"-------------- BP ContextS2 additions start --------------"
	activeProcess := Processor activeProcess.
	activeProcess propagatesCSLayers ifTrue: [
		newProcess csInfo activeLayers: activeProcess csInfo activeLayers].
	activeProcess propagatesDynamicVariables ifTrue: [
		activeProcess setDynamicVariables do: [:dynamicVariable |
			newProcess environmentAt: dynamicVariable put: (activeProcess environmentAt: dynamicVariable)]].
	(activeProcess environmentAt: BPActiveTracer ifAbsent: [nil]) ifNotNil: [ | handlerContext |
		"we are tracing so record process genealogy"
		BPProcessGenealogy newProcess: newProcess descendsFrom: activeProcess.
		"we are tracing, install exception catching"
		handlerContext := Context 
			contextOn: Error 
			do: [:exception | 
				exception class = Halt ifFalse: [
					BPActiveTracer value ifNotNil: [:tracer |
						tracer traceError: exception.
						tracer example suspendTracingProcess]].
				exception signal].
		aContext insertSender: handlerContext].
	
	"-------------- BP ContextS2 additions end --------------"
	newProcess suspendedContext: aContext asContext.
	^newProcess
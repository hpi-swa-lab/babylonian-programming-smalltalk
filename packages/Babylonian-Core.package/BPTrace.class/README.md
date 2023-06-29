A BPTrace is xxxxxxxxx.


allPaths
	- A collection of control flow paths, as each path is represented by exactly one object.

assertions
	- Recorded information from assertions.

blockRecord
	- xxxxx

chronologicallyTrackedTraceValuesCount
	- xxxxx

controlFlowPaths
	- Stores the path objects for each trace value. Essentially a cache.

erroredProcess
	- In case the example execution errored, this is the process that caused the error during the example execution.

exampleErrored
	- Whether the example errored or not.

executionResult
	- The result of the invocation that is the example.

hasTraceCompleted
	- Has the example execution finished or is it still running. 

mutex
	- Protects the tracing data structures in case the example execution includes concurrent behavior.

probes
	- Recorded information from probes.

recordedException
	- In case the example execution errored, this stores the exception that occurred.

accessing
newProcess: newProcess descendsFrom: parentProcess

	(self processes at: parentProcess ifAbsentPut: [WeakSet new]) add: newProcess.
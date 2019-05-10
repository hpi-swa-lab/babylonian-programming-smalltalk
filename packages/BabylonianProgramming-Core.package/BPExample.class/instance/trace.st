tracing
trace

	^ [(self method methodClass new) perform: self method selector withArguments: self arguments] bpTraceForExample: self
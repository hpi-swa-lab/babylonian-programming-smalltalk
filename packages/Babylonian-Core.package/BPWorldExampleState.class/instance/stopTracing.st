tracing
stopTracing

	isTracing ifTrue: [
		isTracing := false.
		self removeUIProcessTracing].
	
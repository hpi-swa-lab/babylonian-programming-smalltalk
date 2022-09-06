tracing
startTracing

	isTracing ifFalse: [
		isTracing := true.
		self installUIProcessTracing].
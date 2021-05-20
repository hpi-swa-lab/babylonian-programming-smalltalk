accessing
probesTraceValuesCount
	
	^ (self probes collect: [:aProbe | aProbe size]) detectSum: [:aSize | aSize value]
tests
testExtractVariableAssignmentIntervals

	self assert: {76@83 . 139@146}
		equals: ((BPTestExamplesClass >> #methodSettingInstanceVars) bpExtractVariableAssignmentRangesNamed: 'foo')
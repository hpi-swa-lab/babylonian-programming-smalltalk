toolbuilder
buildScriptInput: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		indicateUnacceptedChanges: true;
		getText: #script;
		setText: #script:;
		name: #script;
		yourself
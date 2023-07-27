toolbuilder
buildMethodTextWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #methodAsText;
		yourself
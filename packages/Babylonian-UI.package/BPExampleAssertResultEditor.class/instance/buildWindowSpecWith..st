toolbuilder
buildWindowSpecWith: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: #windowLabel;
		extent: 350@240;
		children: OrderedCollection new;
		yourself
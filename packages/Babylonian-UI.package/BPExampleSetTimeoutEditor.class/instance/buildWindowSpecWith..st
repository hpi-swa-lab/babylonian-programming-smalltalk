toolbuilder
buildWindowSpecWith: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		label: #windowLabel;
		extent: 300@60;
		children: OrderedCollection new;
		yourself
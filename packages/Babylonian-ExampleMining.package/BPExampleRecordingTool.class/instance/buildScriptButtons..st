toolbuilder
buildScriptButtons: aBuilder

	^ self buildPanelSpecContaining: { aBuilder pluggableActionButtonSpec new
											model: self;
											label: 'record this script';
										 	action: #recordScript;
										 	help: 'Record the script below';
											yourself}
		with: aBuilder
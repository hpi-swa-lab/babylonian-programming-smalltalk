content
menuContentsSymbolQuints

	"Format: action method . display text in menu . tooltip text"
	^#(
		(configurationButtonClicked	'edit example configuration'		'configure the examples pre- and postscript')
		(deleteAllAnnotationsClicked	'delete all annotations for example' 	'delete all annotations for this example')
		(openInProbeLogClicked	'open example in probelog'		'opens this example in the BPProbeLog')
		(debugMenuItemClicked	'debug example'		'start the example in the debugger')
		(timeoutButtonClicked 	'set timeout'		'sets a timeout for the example`s execution')).
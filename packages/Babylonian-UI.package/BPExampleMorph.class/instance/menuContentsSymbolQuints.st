content
menuContentsSymbolQuints

	"Format: action method . display text in menu . tooltip text"
	^#(
		(configurationButtonClicked	'edit example configuration'		'configure the examples pre- and postscript')
		(deleteAllAnnotationsClicked	'delete all annotations for example' 	'delete all annotations for this example')).
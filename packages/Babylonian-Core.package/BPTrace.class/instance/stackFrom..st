private
stackFrom: aContext

	^ ((aContext stackOfSize: 100) collect: [:context | {context receiver identityHash . context selector}])
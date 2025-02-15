accessing
default

	^ DefaultValue ifNil: [DefaultValue := self new]
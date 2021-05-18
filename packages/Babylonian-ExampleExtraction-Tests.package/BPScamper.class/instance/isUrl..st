changing page
isUrl: aUrl
	
	"^ 'Something wrong'"
	^('http://*' match: aUrl asString) or: ['https://*' match: aUrl asString].
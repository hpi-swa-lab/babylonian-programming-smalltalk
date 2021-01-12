copying
copyObjectReducedMock: anObject
	<exampleNamed: 'some example 43' self: '' with: ''>
	| reducedObject |
	reducedObject := Dictionary new.
	"save only used things"
	
	"##receiver"
	"? authParams"
	"? proxyParams"
	"isConnected"
	"self flushAuthState: proxyParams"
	"flushAuthState: params."
	
	
	"##request"
	"headerAt: (response code = 401 
								ifTrue:['Authorization'] 
								ifFalse:['Proxy-Authorization'])"
	"removeHeader: 'Authorization'"
	"removeHeader: 'Proxy-Authorization'."
	
	"##response"
	"code"
	"headersAt: 'WWW-Authenticate'."
	"headersAt: 'Proxy-Authenticate'"
	
	"self authDispatch: request from: response header: authHeader params: params."
	"WebAuthRequired client: self request: request response: response"
	"self authenticate: request from: response"
	
	^ reducedObject
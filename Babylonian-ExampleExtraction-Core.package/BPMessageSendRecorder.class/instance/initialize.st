initialization
initialize
	

	super initialize.
	self setMessageSend: [].
	self
		setBefore: { [:record :rcvr :args :context |
			record extension receiverObject: rcvr.
			record extension argumentObjects: args] }
  		after: { [:record :rcvr :args :result :context | "record extension returnValue: result" ] }.
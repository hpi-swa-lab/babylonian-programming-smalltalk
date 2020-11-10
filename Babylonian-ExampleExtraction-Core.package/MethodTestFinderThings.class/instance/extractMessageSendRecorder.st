as yet unclassified
extractMessageSendRecorder
	
	| recorder |
	recorder := MessageSendRecorder new
  		watchMethod: (MyClass100 >> #blub:);
		setMessageSend: [(MyClass100 new) blub: 42];
		yourself.
		
	recorder
  		setBefore: { [:record :rcvr :args :context |
			record extension receiverObject: rcvr.
			record extension argumentObjects: args] }
  		after: { [:record :rcvr :args :result :context | "record extension returnValue: result" ] }.
		
	recorder record.
	"self example receiver: recorder topRecord children first children first extension receiverObject.
	self example arguments: recorder topRecord children first children first extension argumentObjects."
	"recorder topRecord inspect."
	"self updateMorphs"
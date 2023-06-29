printing
stackPrintString

	^ String streamContents: [:stream |
		self path 
			do: [:bpContext |
				bpContext methodClass printOn: stream.
				stream << '>>'.
				bpContext selector printOn: stream] 
			separatedBy: [stream nextPut: Character cr]]
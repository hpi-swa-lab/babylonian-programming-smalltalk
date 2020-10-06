*Babylonian-UI
messageList
	"Copied from BPBrowser"
	^ super messageList reject: [:label |
		label asString includesSubstring: '(bpInstrumented)']
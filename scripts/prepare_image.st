FileStream startUp: true.
TranscriptStream redirectToStdOut: true.
Deprecation showDeprecationWarnings: false.

"Update the image."
[MCMcmUpdater updateFromServer] valueSupplyingAnswer: true.

Installer ensureRecentMetacello.
Installer installGitInfrastructure.

"If e.g. your tests change code in the image dynamically, the image will require you to set
author initials which might fail these tests. So we set some dummy initials here to avoid this."
(Smalltalk at: #MetacelloPlatform) current authorName: 'BabylonianInstallation'.

"Load patches for text anchor placement"
FileStream fileIn: 'TextAnchorPlacement.cs'.

"Load Babylonian into image"
(Smalltalk at: #Metacello) new
  baseline: 'BabylonianProgramming';
  repository: 'filetree:///home/runner/work/babylonian-programming-smalltalk/babylonian-programming-smalltalk/packages';
  load: 'tests'.

"Prepare Image a little bit"
PluggableSystemWindow allInstances do: #abandon.
PreferenceWizardMorph allInstances do: #abandon.
SystemBrowser default: BPBrowser.

((Smalltalk at: #BPFancyStar)>>#initialize) browse.

TranscriptStream redirectToStdOut: false.
Deprecation suppressed: false.

SmalltalkImage current snapshot: true andQuit: true.

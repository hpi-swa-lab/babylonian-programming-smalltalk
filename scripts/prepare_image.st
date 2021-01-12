| browserWindow |
FileStream startUp: true.
TranscriptStream redirectToStdOut: true.
Deprecation showDeprecationWarnings: false.

"Update the image."
"[MCMcmUpdater updateFromServer] valueSupplyingAnswer: true."

Installer ensureRecentMetacello.

"If e.g. your tests change code in the image dynamically, the image will require you to set
author initials which might fail these tests. So we set some dummy initials here to avoid this."
(Smalltalk at: #MetacelloPlatform) current authorName: 'BabylonianInstallation'.

"Load patches for text anchor placement"
FileStream fileIn: 'SOHCharacter.cs'.

"Load Babylonian into image"
(Smalltalk at: #Metacello) new
  baseline: 'BabylonianProgramming';
  repository: 'filetree:///home/runner/work/babylonian-programming-smalltalk/babylonian-programming-smalltalk/packages';
  load: 'tests'.

"Prepare Image a little bit"
Preferences disable: #showSharedFlaps.
PluggableSystemWindow allInstances do: #abandon.
PreferenceWizardMorph allInstances do: #abandon.
SystemBrowser default: (Smalltalk at: #BPBrowser).


"
Take a screenshot
"

"First, ensure that the method is fully compiled and the examples are run"
{#BPSearchCollection . #BPEuropeanFlag . #BPEuropeanFlagStar} do: [:className |
  (Smalltalk at: className) methodsDo: [:m | m bpRecompile]].
((Smalltalk at: #BPSearchCollection)>>#binarySearch:) bpExamples do: [:e | e isActive: true].
(Smalltalk at: #BPActiveExamples) value runActiveExamples.

"Second, set up the stage and take the screenshot"
browserWindow := (ToolSet default browse: (Smalltalk at: #BPSearchCollection) selector: #binarySearch:) containingWindow.
browserWindow extent: 891@806.
(browserWindow submorphsSatisfying: [:m | (m isKindOf: ProportionalSplitterMorph) and: [m width > m height]]) first repositionBy: 0@(-100).
browserWindow topLeft: 30@30.

"Give the probes some time to step once"
1 second wait.
ActiveWorld doOneCycle; doOneCycle; doOneCycle.

browserWindow exportAsPNGNamed: 'screenshot-for-readme.png'.

"Wrap up the image and save it"
TranscriptStream redirectToStdOut: false.
Deprecation suppressed: false.

SmalltalkImage current snapshot: true andQuit: true.

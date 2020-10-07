|package zip ws rackIcon contact editor|

"Update the image."
[MCMcmUpdater updateFromServer] valueSupplyingAnswer: true.

Installer ensureRecentMetacello.
Installer installGitInfrastructure.

"If e.g. your tests change code in the image dynamically, the image will require you to set
author initials which might fail these tests. So we set some dummy initials here to avoid this."
(Smalltalk at: #MetacelloPlatform) current authorName: 'BabylonianInstallation'.

"Load Babylonian into image"
(Smalltalk at: #Metacello) new
  baseline: 'BabylonianProgramming';
  repository: 'filetree:///home/runner/work/babylonian-programming-smalltalk/babylonian-programming-smalltalk/packages';
  load.

"Prepare Image a little bit"
SystemBrowser default: BPBrowser.

SmalltalkImage current snapshot: true andQuit: true.
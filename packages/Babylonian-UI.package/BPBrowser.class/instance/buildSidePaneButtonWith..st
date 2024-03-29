toolbuilder
buildSidePaneButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'side pane';
		changeLabelWhen: #morphForSidePane;
		style: #menuButton;
		action: #offerSidePaneContentToShowMenu;
		help: 'Governs what content is shown in the additional side pane. Click here to change the content';
		margin: (5@0 corner: 0@0);
		yourself
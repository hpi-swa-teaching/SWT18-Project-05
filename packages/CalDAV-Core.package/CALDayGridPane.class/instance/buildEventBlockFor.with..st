as yet unclassified
buildEventBlockFor: anEvent with: aBuilder

	^  aBuilder pluggableActionButtonSpec new
		model: self;
		label: anEvent title;
		frame: (((self xLeftFor: anEvent) @ (self yPositionFor: anEvent begin hour and: anEvent begin minute))
		 	corner: (((self xLeftFor: anEvent) + (self widthFor: anEvent)) @ (self yPositionFor: anEvent end hour and: anEvent end minute)))
as yet unclassified
testEmptySelectionIsRemembered

	app selectionFileName: 'testSelection'.
	1 to: app calendars size do: [ :each | app showEventsForCalendar: each put: false ].
	self assert: app calendarsToShow size = 0.
	app := CALApp new 
		selectionFileName: 'testSelection';
		restoreCalendarSelection;
		yourself.
	self assert: app calendarsToShow size = 0 description: 'no calendars should be selected'
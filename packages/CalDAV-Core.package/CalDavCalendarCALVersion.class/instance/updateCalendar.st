updating
updateCalendar
	
	super updateCalendar.
	self calendarName: (self serverData at: #'d:displayname')
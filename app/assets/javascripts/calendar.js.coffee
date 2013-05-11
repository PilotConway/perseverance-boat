###
Calendar

This creates a fullcalendar instance and attaches itself to a div on the page
name calendar. 
###

root = exports ? this

###
The calendar class. This class on init will attach to <div id="calendar" /> 
@param dataSource The url to the even json feed or an array of event objects. 
###
root.Calendar = class Calendar 
  constructor: (@dataSource) ->
    $('#calendar').fullCalendar
      events: @dataSource
      defaultView: 'month'
      aspectRatio: 2


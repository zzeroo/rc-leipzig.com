# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ -> 
  $("#event_startdate").datepicker({ dateFormat: "yy-mm-dd", appendText: "(yyyy-mm-dd)" })
  $("#event_enddate").datepicker({ dateFormat: "yy-mm-dd", appendText: "(yyyy-mm-dd)" })

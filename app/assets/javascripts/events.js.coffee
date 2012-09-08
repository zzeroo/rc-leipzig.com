# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# jQuery Datepicker for Events
# http://jqueryui.com/demos/datepicker
$ -> 
  $(".datepicker").datepicker({ 
    dateFormat: "yy-mm-dd", 
    firstDay: 1,
    monthNames: ["Januar","Februar","Marts","April","Maj","Juni","Juli","August","September","Oktober","November","December"],
    dayNamesMin: ["So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"],
    appendText: "(yyyy-mm-dd)" 
    })


# Zeige ein kleines Info Fenster beim Hover über die Spalte
$ ->
  $(".clickable").hover \ 
    -> $(this).find('td.event-title').next().append('<p id="event-info" class="float-right event-index-info-small">F&uuml;r weitere Infos<br />bitte in die Spalte klicken</p>'),
    -> $(this).find('td.event-title').next().find('#event-info').remove()


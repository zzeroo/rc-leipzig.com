# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ -> 
  $(".datepicker").datepicker({ dateFormat: "yy-mm-dd", appendText: "(yyyy-mm-dd)" })


# Zeige eine kleine 
$ ->
  $(".clickable").hover \ 
    -> $(this).find('td.event-title').append('<p id="event-info" class="float-right event-index-info-small">F&uuml;r weitere Infos<br />bitte in die Spalte klicken</p>')
    ,    
    -> $(this).find('td.event-title').find('#event-info').remove()


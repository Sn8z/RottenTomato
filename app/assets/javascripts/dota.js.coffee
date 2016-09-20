# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$.ajax
  url: '/dota2/matches'
  cache: false
  success: (html) ->
    $('#dota-matches').fadeOut 'slow', ->
      $(this).html html
      $(this).fadeIn 'slow'
      return
    return

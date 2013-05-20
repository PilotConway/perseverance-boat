# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

handleFAQSelection = (e) -> 
  answer = getAnswer e
  if not answer.hasClass 'selected-answer'
    answer.addClass 'selected-answer'
  else 
    answer.removeClass 'selected-answer'

getAnswer = (e) -> 
  id = $(e).parents('.faq').attr('id')
  answer = $("##{id}").find('.answer')

closeAllSelectedAnswers = -> 
  $('.faq').each (e) -> 
    $(e).find('.selected-answer').removeClass('selected-answer')

$(document).ready ->
  # FAQ question has been clicked. 
  $('.question a').click -> 
    handleFAQSelection $(@)

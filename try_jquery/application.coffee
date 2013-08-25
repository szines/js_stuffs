$ ->
  newtext = $('<p>New text</p>')
  $('button').on 'click', ->
    newtext.appendTo('#box3')

$ ->
  $('#log').draggable()

  logging = (content) ->
    $('#log').append(content)

  initialize = (insert) ->
    row = $("<tr><td>" + insert + "</td><td class='" + insert + "'></td></tr>")
    row.appendTo('#box1 table')

    $('#area').on insert, ->
      $('#box1').find("td").removeClass('green')
      $('#box1').find("." + insert).addClass('green')

  mouseevents = ['click', 'dblclick', 'focusin', 'focusout', 'mousedown', 'mouseup', 'mousemove', 'mouseout', 'mouseover', 'mouseleave', 'mouseenter']
  mouseevents.forEach(initialize)


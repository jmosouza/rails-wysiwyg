$(document).on 'turbolinks:load', ->
  $('.wysiwyg').wysihtml5()

$(document).on 'page:load', ->
  window['rangy'].initialized = false
